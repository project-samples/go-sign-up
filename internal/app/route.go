package app

import (
	"context"
	. "github.com/core-go/security"
	"github.com/gorilla/mux"
	"go-service/internal/middwares/chain"
)

func Route(router *mux.Router, context context.Context, root Config) error {
	app, err := NewApp(context, root)
	if err != nil {
		return err
	}
	auMiddleware := chain.New(app.AuthenticationChecker.Check)

	router.HandleFunc("/health", app.Health.Check).Methods(GET)
	router.HandleFunc("/authenticate", app.Authentication.Authenticate).Methods(POST)

	r := router.PathPrefix("/").Subrouter()

	r.HandleFunc("/authentication/signout/{username}", app.SignOut.SignOut).Methods(GET)

	r.HandleFunc("/password/change", app.Password.ChangePassword).Methods(POST)
	r.HandleFunc("/password/forgot", app.Password.ForgotPassword).Methods(POST)
	r.HandleFunc("/password/reset", app.Password.ResetPassword).Methods(POST)

	r.HandleFunc("/signup/signup", app.SignUp.SignUp).Methods(POST)
	r.HandleFunc("/signup/verify/{userId}/{code}", app.SignUp.VerifyUser).Methods(GET)

	//r.HandleFunc("/oauth2/configurations/{type}", app.OAuth2.Configuration).Methods(GET)
	//r.HandleFunc("/oauth2/configurations", app.OAuth2.Configurations).Methods(GET)
	//r.HandleFunc("/oauth2/authenticate", app.OAuth2.Authenticate).Methods(POST)

	r.HandleFunc("/skills", app.Skill.Query).Methods(GET)
	r.HandleFunc("/interests", app.Interest.Query).Methods(GET)
	r.HandleFunc("/looking-for", app.LookingFor.Query).Methods(GET)
	r.HandleFunc("/educations", app.Education.Query).Methods(GET)
	r.HandleFunc("/companies", app.Companies.Query).Methods(GET)
	r.HandleFunc("/works", app.Work.Query).Methods(GET)

	user := "/users"
	r.HandleFunc(user+"/search", app.User.Search).Methods(GET, POST)
	r.HandleFunc(user+"/{id}", app.User.Load).Methods(GET)
	r.HandleFunc(user+"/loadfollow/{id}", app.UserInfomation.Load).Methods(GET)

	r.HandleFunc(user+"/rates/comments", app.SearchUserRateComment.Search).Methods(POST)
	r.HandleFunc(user+"/rates/search", app.SearchUserRate.Search).Methods(GET, POST)
	r.HandleFunc(user+"/rates/{id}/{author}", app.UserRate.Rate).Methods(POST)
	r.HandleFunc(user+"/rates/{id}/{author}/useful/{userId}", app.UserRateReaction.Create)
	r.HandleFunc(user+"/rates/{id}/{author}/useful/{userId}", app.UserRateReaction.Delete).Methods(DELETE)
	r.HandleFunc(user+"/rates/{id}/{author}/comments", app.UserRateComment.Load).Methods(GET)
	r.HandleFunc(user+"/rates/{id}/{author}/comments/{userId}", app.UserRateComment.Create).Methods(POST)
	r.HandleFunc(user+"/rates/{id}/{author}/comments/{userId}/{commentId}", app.UserRateComment.Update).Methods(PUT)
	r.HandleFunc(user+"/rates/{id}/{author}/comments/{commentId}", app.UserRateComment.Delete).Methods(DELETE)

	r.HandleFunc(user+"/reaction/{id}/{author}/{reaction}", app.UserReact.React).Methods(GET)
	r.HandleFunc(user+"/unreaction/{id}/{author}/{reaction}", app.UserReact.Unreact).Methods(DELETE)
	r.HandleFunc(user+"/checkreaction/{id}/{author}", app.UserReact.CheckReact).Methods(GET)

	r.HandleFunc("/my-profile/{id}", auMiddleware.ThenFn(app.MyProfile.GetMyProfile)).Methods(GET)
	r.HandleFunc("/my-profile/{id}", auMiddleware.ThenFn(app.MyProfile.SaveMyProfile)).Methods(PATCH)
	r.HandleFunc("/my-profile/{id}/settings", auMiddleware.ThenFn(app.MyProfile.GetMySettings)).Methods(GET)
	r.HandleFunc("/my-profile/{id}/settings", auMiddleware.ThenFn(app.MyProfile.SaveMySettings)).Methods(PATCH)
	r.HandleFunc("/my-profile/{id}/gallery", auMiddleware.ThenFn(app.MyProfile.UploadGallery)).Methods(POST)
	r.HandleFunc("/my-profile/{id}/gallery", auMiddleware.ThenFn(app.MyProfile.DeleteGalleryFile)).Methods(DELETE)
	r.HandleFunc("/my-profile/{id}/fetchImageGalleryUploaded", auMiddleware.ThenFn(app.MyProfile.GetGallery)).Methods(GET)
	r.HandleFunc("/my-profile/{id}/upload", auMiddleware.ThenFn(app.MyProfile.UploadImage)).Methods(POST)
	r.HandleFunc("/my-profile/{id}/cover", auMiddleware.ThenFn(app.MyProfile.UploadCover)).Methods(POST)

	return err
}
