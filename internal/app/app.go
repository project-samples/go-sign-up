package app

import (
	"context"
	"reflect"

	. "github.com/core-go/auth"
	authhandler "github.com/core-go/auth/handler"
	sqlauth "github.com/core-go/auth/sql"
	"github.com/core-go/core/shortid"
	. "github.com/core-go/health"
	"github.com/core-go/log"
	. "github.com/core-go/mail"
	. "github.com/core-go/mail/sendgrid"
	. "github.com/core-go/mail/smtp"
	mgo "github.com/core-go/mongo"
	. "github.com/core-go/password"
	sqlpm "github.com/core-go/password/sql"

	"github.com/core-go/reaction"
	"github.com/core-go/reaction/comment"
	commentmux "github.com/core-go/reaction/comment/mux"
	searchcomment "github.com/core-go/reaction/comment/search"
	"github.com/core-go/reaction/follow"
	"github.com/core-go/reaction/rate"
	searchrate "github.com/core-go/reaction/rate/search"
	"github.com/core-go/reaction/response"
	"github.com/core-go/reaction/save"
	userreaction "github.com/core-go/reaction/user-reaction"

	"github.com/core-go/redis"
	"github.com/core-go/search"
	"github.com/core-go/search/convert"
	. "github.com/core-go/security/crypto"
	. "github.com/core-go/security/jwt"
	. "github.com/core-go/signup"
	. "github.com/core-go/signup/mail"
	sqlsm "github.com/core-go/signup/sql"
	s "github.com/core-go/sql"
	q "github.com/core-go/sql/query"
	"github.com/core-go/sql/template"
	"github.com/core-go/storage"
	"github.com/core-go/storage/google"
	"github.com/core-go/storage/upload"
	"github.com/lib/pq"
	_ "github.com/lib/pq"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"

	"go-service/internal/middwares/authorization"
	"go-service/internal/myprofile"
	"go-service/internal/user"
	"go-service/internal/userinfomation"
)

type ApplicationContext struct {
	Health                *Handler
	AuthenticationChecker *authorization.AuthorizationChecker
	Authentication        *authhandler.AuthenticationHandler
	SignOut               *authhandler.SignOutHandler
	Password              *PasswordHandler
	SignUp                *SignUpHandler
	User                  user.UserHandler
	MyProfile             myprofile.MyProfileHandler
	Skill                 *q.QueryHandler
	Interest              *q.QueryHandler
	LookingFor            *q.QueryHandler
	Director              *q.QueryHandler
	Education             *q.QueryHandler
	Companies             *q.QueryHandler
	Work                  *q.QueryHandler
	Cast                  *q.QueryHandler
	Country               *q.QueryHandler
	Production            *q.QueryHandler

	Follow         follow.FollowHandler
	SavedItem      save.SaveHandler
	Comment        commentmux.CommentHandler
	Reaction       reaction.ReactionHandler
	Response       response.ResponseHandler
	SearchResponse *search.SearchHandler
	SearchComment  *search.SearchHandler

	FollowLocation follow.FollowHandler

	UserReact             userreaction.UserReactionHandler
	UserInfomation        userinfomation.UserInfomationHandler
	SearchUserRate        *search.SearchHandler
	SearchUserRateComment *search.SearchHandler
	UserRate              rate.Handler
	UserRateReaction      reaction.ReactionHandler
	UserRateComment       commentmux.CommentHandler
}

func NewApp(ctx context.Context, conf Config) (*ApplicationContext, error) {
	client, err := mongo.Connect(ctx, options.Client().ApplyURI(conf.Mongo.Uri))
	if err != nil {
		return nil, err
	}
	mongoDb := client.Database(conf.Mongo.Database)
	db, err := s.OpenByConfig(conf.Sql)
	if err != nil {
		return nil, err
	}
	// locationDb, err1 := mgo.Setup(ctx, conf.Location)
	// if err1 != nil {
	// 	return nil, err1
	// }
	logError := log.LogError

	generateId := shortid.Generate
	cloudService, _ := CreateCloudService(ctx, conf)

	buildParam := q.GetBuild(db)
	templates, err := template.LoadTemplates(template.Trim, "configs/query.xml")
	if err != nil {
		return nil, err
	}

	//testQuery := "select username,email from users where username = $1 or email = $2"
	//rows, err := db.QueryContext(ctx, testQuery, "vinhtq2020", "vinhtq2020@gmail.com")
	//fmt.Println("rows, err", rows, err)
	//userCollection := "user"
	//authentication := "authentication"

	redisService, err := redis.NewRedisServiceByConfig(conf.Redis)
	if err != nil {
		return nil, err
	}
	tokenBlacklistChecker := NewTokenBlacklistChecker("blacklist:", conf.Token.Expires, redisService)

	mailService := NewMailService(conf.Mail)

	userInfoService, err := sqlauth.NewUserRepository(db, conf.Authorize.Query, conf.Authorize.DB, conf.Authorize.UserStatus)
	if err != nil {
		return nil, err
	}
	authStatus := InitStatus(conf.Authorize.Status)
	//authenticationRepositorySQL, err := sqlauth.NewSqlUserRepository(db, conf.AuthSqlConfig, conf.AuthQuery, conf.UserStatus)
	//if err != nil {
	//	return nil, err
	//}
	bcryptComparator := &BCryptStringComparator{}
	tokenService := NewTokenService()
	//verifiedCodeSender := NewPasscodeSender(mailService, conf.Mail.From, NewTemplateLoaderByConfig(conf.Auth.Template))
	//passCodeService := mgo.NewPasscodeRepository(mongoDb, "authenpasscode")
	//authenticator := NewAuthenticatorWithTwoFactors(status, userInfoService, bcryptComparator, tokenService.GenerateToken, conf.Token, conf.Payload, nil, verifiedCodeSender.Send, passCodeService, conf.Auth.Expires)
	//authenticationHandler := authhandler.NewAuthenticationHandler(authenticator.Authenticate, status.Error, status.Timeout, logError1)
	//signOutHandler := authhandler.NewSignOutHandler(tokenService.VerifyToken, conf.Token.Secret, tokenBlacklistChecker.Revoke, logError)
	authenticator := NewAuthenticator(authStatus, userInfoService, bcryptComparator, tokenService.GenerateToken, conf.Authorize.Token, conf.Authorize.Payload)
	authenticationHandler := authhandler.NewAuthenticationHandler(authenticator.Authenticate, authStatus.Error, authStatus.Timeout, logError)
	signOutHandler := authhandler.NewSignOutHandler(tokenService.VerifyToken, conf.Authorize.Token.Secret, tokenBlacklistChecker.Revoke, log.ErrorMsg)
	authorizationCheckerHandler := authorization.NewDefaultAuthorizationChecker(tokenService.GetAndVerifyToken, conf.Authorize.Token.Secret, conf.Authorize.Payload.Id, "author", "userId", "userCtx")

	passwordResetCode := "passwordcodes"
	//passwordRepository := pm.NewPasswordRepositoryByConfig(mongoDb, userCollection, authentication, userCollection, "userId", conf.Password.Schema)
	//passResetCodeRepository := mgo.NewPasscodeRepository(mongoDb, passwordResetCode)
	passwordRepositorySQL := sqlpm.NewPasswordRepositoryByConfig(db, "users", "credentials", "history", "id", conf.Password.Schema, 5, pq.Array)
	passResetCodeRepositorySQL := s.NewPasscodeService(db, passwordResetCode, "expiredat", "id", "code")
	p := conf.Password
	exps := []string{p.Exp1, p.Exp2, p.Exp3, p.Exp4, p.Exp5, p.Exp6}
	signupSender := NewVerifiedEmailSender(mailService, *conf.SignUp.UserVerified, conf.Mail.From, NewTemplateLoaderByConfig(*conf.SignUp.Template))
	passwordResetSender := NewPasscodeSender(mailService, conf.Mail.From, NewTemplateLoaderByConfig(conf.Password.Template.ResetTemplate))
	passwordChangeSender := NewPasscodeSender(mailService, conf.Mail.From, NewTemplateLoaderByConfig(conf.Password.Template.ChangeTemplate))
	passwordService := NewPasswordService(bcryptComparator, passwordRepositorySQL, conf.Password.ResetExpires, passResetCodeRepositorySQL, passwordResetSender.Send, tokenBlacklistChecker.RevokeAllTokens, exps, 5, nil, conf.Password.ChangeExpires, passResetCodeRepositorySQL, passwordChangeSender.Send)
	passwordHandler := NewPasswordHandler(passwordService, log.LogError, nil)

	signUpCode := "sign_up_codes"
	signupStatus := InitSignUpStatus(conf.SignUp.Status)
	emailValidator := NewEmailValidator(true, "")
	//signUpRepository := sm.NewSignUpRepositoryByConfig(mongoDb, userCollection, authentication, conf.SignUp.UserStatus, conf.MaxPasswordAge, conf.SignUp.Schema, nil)
	//signUpCodeRepository := mgo.NewPasscodeRepository(mongoDb, signUpCode)
	//signUpService := NewSignUpService(signupStatus, true, signUpRepository, generateId, bcryptComparator.Hash, bcryptComparator, signUpCodeRepository, signupSender.Send, conf.SignUp.Expires, emailValidator.Validate, exps)
	//signupHandler := NewSignUpHandler(signUpService, signupStatus.Error, log.LogError, conf.SignUp.Action)
	signUpRepositorySQL := sqlsm.NewSignUpRepositoryByConfig(db, "users", "credentials", conf.SignUp.UserStatus, conf.MaxPasswordAge, conf.SignUp.Schema, nil)
	signUpCodeRepositorySQL := s.NewPasscodeService(db, signUpCode, "expired_at", "user_id", "code")
	signUpService := NewSignUpService(signupStatus, true, signUpRepositorySQL, generateId, bcryptComparator.Hash, bcryptComparator, signUpCodeRepositorySQL, signupSender.Send, conf.SignUp.Expires, emailValidator.Validate, exps)
	signupHandler := NewSignUpHandler(signUpService, signupStatus.Error, log.LogError, conf.SignUp.Action)

	//integrationConfiguration := "integrationconfiguration"
	//sources := []string{SourceGoogle, SourceFacebook, SourceLinkedIn, SourceAmazon, SourceMicrosoft, SourceDropbox}
	//oauth2UserRepositories := make(map[string]OAuth2UserRepository)
	//oauth2UserRepositories[SourceGoogle] = NewGoogleUserRepository()
	//oauth2UserRepositories[SourceFacebook] = NewFacebookUserRepository()
	//oauth2UserRepositories[SourceLinkedIn] = NewLinkedInUserRepository()
	//oauth2UserRepositories[SourceAmazon] = NewAmazonUserRepository(conf.CallBackURL.Amazon)
	//oauth2UserRepositories[SourceMicrosoft] = NewMicrosoftUserRepository(conf.CallBackURL.Microsoft)
	//oauth2UserRepositories[SourceDropbox] = NewDropboxUserRepository()

	//activatedStatus := conf.SignUp.UserStatus.Activated
	//schema := conf.OAuth2.Schema
	//services := strings.Split(conf.OAuth2.Services, ",")
	//userRepositories := make(map[string]UserRepository)
	//for _, source := range sources {
	//	userRepository := om.NewUserRepositoryByConfig(mongoDb, userCollection, source, activatedStatus, services, schema, &conf.UserStatus)
	//	userRepositories[source] = userRepository
	//}
	//configurationRepository := om.NewConfigurationRepository(mongoDb, integrationConfiguration, oauth2UserRepositories, "status", "A")
	//
	//oauth2Service := NewOAuth2Service(status, oauth2UserRepositories, userRepositories, configurationRepository, generateId, tokenService, conf.Token, nil)
	//oauth2Handler := NewDefaultOAuth2Handler(oauth2Service, status.Error, log.LogError)

	mongoHealthChecker := mgo.NewHealthChecker(mongoDb)
	redisHealthChecker := redis.NewHealthChecker(redisService.Pool)

	// user
	userType := reflect.TypeOf(user.User{})
	userQuery, err := template.UseQueryWithArray(conf.Template, nil, "users", templates, &userType, convert.ToMap, buildParam, pq.Array)
	if err != nil {
		return nil, err
	}
	userSearchBuilder, err := s.NewSearchBuilderWithArray(db, userType, userQuery, pq.Array)
	if err != nil {
		return nil, err
	}
	getUser, err := s.UseGetWithArray(db, "users", userType, pq.Array)
	if err != nil {
		return nil, err
	}
	userHandler := user.NewUserHandler(userSearchBuilder.Search, getUser, log.LogError, nil)

	userReactService := userreaction.NewUserReactionService(db, "userreaction", "id", "author", "reaction",
		"userinfo", "id", "reactioncount", "level", "count")
	userReactHandler := userreaction.NewUserReactionHandler(userReactService, "id", "author", "reaction")

	userRateReactionService := reaction.NewReactionService(db, "userratereaction", "id", "author", "userid", "time", "reaction",
		"userrate", "id", "author", "usefulcount")
	userRateReactionHandler := reaction.NewReactionHandler(userRateReactionService, 0, 2, 3)
	// user rate
	userRateService := rate.NewRateService(db, "userrate", "id", "author", "anonymous", "rate", "review", "time", "usefulcount", "replycount",
		"userrateinfo", "id", "rate", "count", "score", pq.Array)

	userRateHandler := rate.NewRateHandler(userRateService, 0, 1, 5)

	// search user rate
	userRateType := reflect.TypeOf(rate.Rate{})
	userRateFilterType := reflect.TypeOf(searchrate.RateFilter{})
	searchUserRateQuery, err := template.UseQueryWithArray(conf.Template, nil, "userrate", templates, &userRateType, convert.ToMap, buildParam)
	if err != nil {
		return nil, err
	}
	userRateSearchBuilder, err := s.NewSearchBuilderWithArray(db, userRateType, searchUserRateQuery, pq.Array)
	if err != nil {
		return nil, err
	}
	searchUserRateHandler := search.NewSearchHandler(userRateSearchBuilder.Search, userRateType, userRateFilterType, log.LogError, nil)

	// user rate comment
	userRateCommentService := comment.NewCommentService(db, "userratecomment", "commentid", "id", "author", "userid", "comment", "anonymous", "time", "updatedat", "userrate", "id", "author", "replycount", "users", "id", "imageurl", "username", nil, pq.Array)
	userRateCommentHandler := commentmux.NewCommentHandler(userRateCommentService, "commentId", "id", "author", "userId")
	// search user rate comment
	searchUserRateCommentType := reflect.TypeOf(searchcomment.Comment{})
	searchUserRateCommentFilterType := reflect.TypeOf(searchcomment.CommentFilter{})
	searchUserRateCommentQuery, err := template.UseQueryWithArray(conf.Template, nil, "userratecomment", templates, &searchUserRateCommentType, convert.ToMap, buildParam)
	if err != nil {
		return nil, err
	}
	searchUserRateCommentBuilder, err := s.NewSearchBuilderWithArray(db, searchUserRateCommentType, searchUserRateCommentQuery, pq.Array)
	if err != nil {
		return nil, err
	}
	searchUserRateCommentHandler := search.NewSearchHandler(searchUserRateCommentBuilder.Search, searchUserRateCommentType, searchUserRateCommentFilterType, logError, nil)
	skillService := q.NewStringService(db, "skills", "skill")
	skillHandler := q.NewQueryHandler(skillService.Load, log.LogError)
	interestService := q.NewStringService(db, "interests", "interest")
	interestHandler := q.NewQueryHandler(interestService.Load, log.LogError)
	lookingForService := q.NewStringService(db, "usersearchs", "item")
	lookingForHandler := q.NewQueryHandler(lookingForService.Load, log.LogError)
	directorService := q.NewStringService(db, "filmdirectors", "director")
	directorHandler := q.NewQueryHandler(directorService.Load, log.LogError)
	educationService := q.NewStringService(db, "usereducations", "educations")
	educationHandler := q.NewQueryHandler(educationService.Load, log.LogError)
	companiesService := q.NewStringService(db, "usercompany", "company")
	companiesHandler := q.NewQueryHandler(companiesService.Load, log.LogError)
	workService := q.NewStringService(db, "userwork", "work")
	workHandler := q.NewQueryHandler(workService.Load, log.LogError)
	// castService := q.NewStringService(db, "casts", "cast")
	// castHandler := q.NewQueryHandler(castService.Load, log.LogError)
	castService := q.NewStringService(db, "filmcasts", "actor")
	castHandler := q.NewQueryHandler(castService.Load, log.LogError)
	productionService := q.NewStringService(db, "filmproductions", "production")
	productionHandler := q.NewQueryHandler(productionService.Load, log.LogError)
	countryService := q.NewStringService(db, "filmcasts", "actor")
	countryHander := q.NewQueryHandler(countryService.Load, log.LogError)
	Cover := "coverurl"
	Image := "imageurl"
	Gallery := "gallery"
	myprofileType := reflect.TypeOf(myprofile.User{})
	myProfileRepository, _ := s.NewRepositoryWithArray(db, "users", myprofileType, pq.Array)
	uploadProfileRepository := upload.NewRepository(db, "users", "", upload.UploadFieldColumn{Image: &Image, Cover: &Cover, Gallery: &Gallery, Id: "id"}, pq.Array)
	uploadService := upload.NewUploadService(uploadProfileRepository, cloudService, conf.Provider, conf.GeneralDirectory,
		conf.KeyFile, conf.Storage.Directory, []int{}, []int{})
	myProfileService := myprofile.NewUserService(myProfileRepository)
	myProfileHandler := myprofile.NewMyProfileHandler(myProfileService, log.LogError, nil, skillService.Save, interestService.Save, lookingForService.Save,
		educationService.Save, companiesService.Save, workService.Save, uploadService, conf.KeyFile, generateId)
	// user info

	// Follow
	followService := follow.NewFollowService(
		db,
		"userfollower", "id", "follower",
		"userfollowing", "id", "following",
		"userinfo", "id", "followercount", "followingcount")
	followHandler := follow.NewFollowHandler(followService, 0, 1)

	// Userinfomation
	userinfoType := reflect.TypeOf(userinfomation.UserInfomation{})
	userInfomationRepository, err := s.NewViewRepository(db, "userinfo", userinfoType)
	if err != nil {
		return nil, err
	}

	userInfomationService := userinfomation.NewUserInfomationService(userInfomationRepository)

	// userinfosearchquery, err := template.UseQuery(conf.Template, nil, "userinfo", templates, &userinfoType, convert.ToMap, buildParam)
	// if err != nil {
	// 	return nil, err
	// }
	// userInfoSearchBuilder, err := s.NewSearchBuilder(db, userinfoType, userinfosearchquery)
	// if err != nil {
	// 	return nil, err
	// }
	userInfomationHandler := userinfomation.NewUserInfomationHandler(userInfomationService, log.LogError, nil)

	healthHandler := NewHandler(
		redisHealthChecker,
		mongoHealthChecker,
	)
	if err != nil {
		return nil, err
	}

	app := ApplicationContext{
		Health:                healthHandler,
		Authentication:        authenticationHandler,
		AuthenticationChecker: authorizationCheckerHandler,
		SignOut:               signOutHandler,
		Password:              passwordHandler,
		SignUp:                signupHandler,
		User:                  userHandler,
		MyProfile:             myProfileHandler,
		Skill:                 skillHandler,
		Interest:              interestHandler,
		LookingFor:            lookingForHandler,
		Director:              directorHandler,
		Education:             educationHandler,
		Companies:             companiesHandler,
		Work:                  workHandler,
		Cast:                  castHandler,
		Country:               countryHander,
		Production:            productionHandler,
		Follow:                followHandler,

		UserReact:             userReactHandler,
		UserInfomation:        userInfomationHandler,
		SearchUserRate:        searchUserRateHandler,
		SearchUserRateComment: searchUserRateCommentHandler,
		UserRate:              userRateHandler,
		UserRateReaction:      userRateReactionHandler,
		UserRateComment:       userRateCommentHandler,
	}
	return &app, nil
}

func NewMailService(mailConfig MailConfig) SimpleMailSender {
	if mailConfig.Provider == "sendgrid" {
		return NewSimpleMailSender(NewSendGridMailSender(mailConfig.APIkey))
	}
	return NewSimpleMailSender(NewSmtpMailSender(mailConfig.SMTP))
}
func CreateCloudService(ctx context.Context, config Config) (storage.StorageService, error) {
	return google.NewGoogleStorageServiceWithCredentials(ctx, []byte(config.GoogleCredentials), config.Storage)
}
