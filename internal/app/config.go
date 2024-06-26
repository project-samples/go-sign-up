package app

import (
	. "github.com/core-go/auth"
	. "github.com/core-go/auth/mail"
	sv "github.com/core-go/core"

	sqlauth "github.com/core-go/auth/sql"
	"github.com/core-go/core/builder"
	. "github.com/core-go/mail/smtp"
	//. "github.com/core-go/oauth2"
	. "github.com/core-go/password/mail"
	redis "github.com/core-go/redis/v8"
	. "github.com/core-go/signup/mail"
	"github.com/core-go/sql"
	"github.com/core-go/storage"
)

type Config struct {
	Server ServerConfig      `mapstructure:"server"`
	Sql   sql.Config   `mapstructure:"sql"`
	Redis redis.Config `mapstructure:"redis"`

	MaxPasswordFailed     int                           `mapstructure:"max_password_failed"`
	LockedMinutes         int                           `mapstructure:"locked_minutes"`
	MaxPasswordAge        int32                         `mapstructure:"max_password_age"`
	PasswordEncryptionKey string                        `mapstructure:"password_encryption_key"`
	Token                 TokenConfig                   `mapstructure:"token"`
	Payload               PayloadConfig                 `mapstructure:"payload"`
	Status                *StatusConfig                 `mapstructure:"status"`
	UserStatus            UserStatusConfig              `mapstructure:"user_status"`
	Auth                  AuthMailConfig                `mapstructure:"auth"`
	Authorize        	  sqlauth.SqlAuthConfig     	`mapstructure:"authorize"`
	Password              PasswordMailConfig            `mapstructure:"password"`
	SignUp                SignUpConfigWithEmailTemplate `mapstructure:"sign_up"`
	//OAuth2                OAuth2Config                  `mapstructure:"oauth2"`
	Mail                  MailConfig                    `mapstructure:"mail"`
	//CallBackURL           CallbackURL                   `mapstructure:"callback_url"`

	Tracking          builder.TrackingConfig `mapstructure:"action"`
	Template          bool                   `mapstructure:"template"`
	ModelStatus       *sv.StatusConfig       `mapstructure:"model_status"`
	Action            *sv.ActionConfig       `mapstructure:"action"`
	Provider          string                 `mapstructure:"provider"`
	GeneralDirectory  string                 `mapstructure:"general_directory"`
	GoogleCredentials string                 `mapstructure:"google_credentials"`
	Storage           storage.Config         `mapstructure:"google_storage"`
	KeyFile           string                 `mapstructure:"key_file"`
}

type ServerConfig struct {
	Name string `mapstructure:"name" json:"name,omitempty" gorm:"column:name" bson:"name,omitempty" dynamodbav:"name,omitempty" firestore:"name,omitempty"`
	Port *int64 `mapstructure:"port" json:"port,omitempty" gorm:"column:port" bson:"port,omitempty" dynamodbav:"port,omitempty" firestore:"port,omitempty"`
}
