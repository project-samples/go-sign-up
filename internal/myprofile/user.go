package myprofile

import (
	"database/sql/driver"
	"encoding/json"
	"errors"
	"time"
)

type User struct {
	UserId            string       `json:"user_id,omitempty" gorm:"column:user_id;primary_key" bson:"_id,omitempty" dynamodbav:"userId,omitempty" firestore:"userId,omitempty" validate:"required,max=40" match:"equal"`
	Username          string       `json:"username,omitempty" gorm:"column:username" bson:"username,omitempty" dynamodbav:"username,omitempty" firestore:"username,omitempty" validate:"required,max=100"`
	Email             string       `json:"email,omitempty" gorm:"column:email" bson:"email,omitempty" dynamodbav:"email,omitempty" firestore:"email,omitempty" validate:"email,max=100"`
	GivenName         string       `json:"givenName,omitempty" gorm:"column:given_name" bson:"givenName,omitempty" dynamodbav:"givenName,omitempty" firestore:"givenName,omitempty" validate:"omitempty,max=100"`
	FamilyName        string       `json:"familyName,omitempty" gorm:"column:family_name" bson:"familyName,omitempty" dynamodbav:"familyName,omitempty" firestore:"familyName,omitempty" validate:"omitempty,max=100"`
	DisplayName       *string      `json:"displayName,omitempty" gorm:"column:display_name" bson:"displayName,omitempty" dynamodbav:"displayName,omitempty" firestore:"displayName,omitempty" validate:"omitempty,max=100"`
	Phone             *string      `json:"phone,omitempty" gorm:"column:phone" bson:"phone,omitempty" dynamodbav:"phone,omitempty" firestore:"phone,omitempty" validate:"required,phone,max=18"`
	Occupation        *string      `json:"occupation,omitempty" gorm:"column:occupation" bson:"occupation,omitempty" dynamodbav:"occupation,omitempty" firestore:"occupation,omitempty" `
	ContactAddress    *Address     `json:"contactAddress,omitempty" gorm:"column:contact_address" bson:"contactAddress,omitempty" dynamodbav:"contactAddress,omitempty" firestore:"contactAddress,omitempty"`
	EmployerAddress   *Address     `json:"employerAddress,omitempty" gorm:"column:employer_address" bson:"employerAddress,omitempty" dynamodbav:"employerAddress,omitempty" firestore:"employerAddress,omitempty"`
	InvestmentPurpose *string      `json:"investmentPurpose,omitempty" gorm:"column:investment_purpose" bson:"investmentPurpose,omitempty" dynamodbav:"investmentPurpose,omitempty" firestore:"investmentPurpose,omitempty"`
	SourceIncome      *string      `json:"sourceIncome,omitempty" gorm:"column:source_income" bson:"sourceIncome,omitempty" dynamodbav:"sourceIncome,omitempty" firestore:"sourceIncome,omitempty"`
	CountryIncome     *string      `json:"countryIncome,omitempty" gorm:"column:country_income" bson:"countryIncome,omitempty" dynamodbav:"countryIncome,omitempty" firestore:"countryIncome,omitempty"`
	AverageIncome     *string      `json:"averageIncome,omitempty" gorm:"column:average_income" bson:"averageIncome,omitempty" dynamodbav:"averageIncome,omitempty" firestore:"averageIncome,omitempty"`
	BusinessType      *string      `json:"businessType,omitempty" gorm:"column:business_type" bson:"business_type,omitempty" dynamodbav:"business_type,omitempty" firestore:"city,omitempty"`
	DateOfBirth       *time.Time   `json:"dateOfBirth,omitempty" gorm:"column:date_of_birth" bson:"dateOfBirth,omitempty" dynamodbav:"dateOfBirth,omitempty" firestore:"dateOfBirth,omitempty"`
	Settings          *Settings    `json:"settings,omitempty" gorm:"column:settings" bson:"settings,omitempty" dynamodbav:"settings,omitempty" firestore:"settings,omitempty"`
	Educations        *string      `json:"educations,omitempty" gorm:"column:educations" bson:"educations,omitempty" dynamodbav:"educations,omitempty" firestore:"educations,omitempty"`
	Gallery           []UploadInfo `json:"gallery,omitempty" gorm:"column:gallery" bson:"gallery,omitempty" dynamodbav:"gallery,omitempty" firestore:"gallery,omitempty"`
	ImageURL          *string      `json:"imageURL,omitempty" gorm:"column:imageURL" bson:"imageURL,omitempty" dynamodbav:"imageURL,omitempty" firestore:"imageURL,omitempty"`
	CoverURL          *string      `json:"coverURL,omitempty" gorm:"column:coverurl"`
}

type Address struct {
	AddressNo     string `json:"addressNo,omitempty" gorm:"column:address_no" bson:"addressNo,omitempty" dynamodbav:"addressNo,omitempty" firestore:"addressNo,omitempty"`
	StreetAddress string `json:"streetAddress,omitempty" gorm:"column:street_address" bson:"streetAddress,omitempty" dynamodbav:"streetAddress,omitempty" firestore:"streetAddress,omitempty"`
	AddressOption string `json:"addressOption,omitempty" gorm:"column:address_option" bson:"AddressOption,omitempty" dynamodbav:"AddressOption,omitempty" firestore:"AddressOption,omitempty"`
	ZipCode       string `json:"zipCode,omitempty" gorm:"column:zip_code" bson:"zipCode,omitempty" dynamodbav:"zipCode,omitempty" firestore:"zipCode,omitempty"`
	SubDistrict   string `json:"subDistrict,omitempty" gorm:"column:sub_district" bson:"subDistrict,omitempty" dynamodbav:"subDistrict,omitempty" firestore:"subDistrict,omitempty"`
	District      string `json:"district,omitempty" gorm:"column:district" bson:"district,omitempty" dynamodbav:"district,omitempty" firestore:"district,omitempty"`
	City          string `json:"city,omitempty" gorm:"column:city" bson:"city,omitempty" dynamodbav:"city,omitempty" firestore:"city,omitempty"`
	Country       string `json:"country,omitempty" gorm:"column:country" bson:"country,omitempty" dynamodbav:"country,omitempty" firestore:"country,omitempty"`
}

type UploadInfo struct {
	Source     string `json:"source,omitempty" gorm:"column:source" bson:"source,omitempty" dynamodbav:"source,omitempty" firestore:"source,omitempty"`
	TypeUpload string `json:"type,omitempty" gorm:"column:type" bson:"type,omitempty" dynamodbav:"type,omitempty" firestore:"type,omitempty"`
	Url        string `json:"url,omitempty"  gorm:"column:url" bson:"url,omitempty" dynamodbav:"url,omitempty" firestore:"url,omitempty" validate:"required"`
}

type Skills struct {
	Skill   string `json:"skill,omitempty" gorm:"column:skill" bson:"skill,omitempty" dynamodbav:"skill,omitempty" firestore:"skill,omitempty" validate:"required"`
	Hirable bool   `json:"hirable,omitempty" gorm:"column:hirable" bson:"hirable,omitempty" dynamodbav:"hirable,omitempty" firestore:"hirable,omitempty"`
}

func (c Skills) Value() (driver.Value, error) {
	return json.Marshal(c)
}
func (c *Skills) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return errors.New("type assertion to []byte failed")
	}
	return json.Unmarshal(b, &c)
}
func (c Address) Value() (driver.Value, error) {
	return json.Marshal(c)
}
func (c *Address) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return errors.New("type assertion to []byte failed")
	}
	return json.Unmarshal(b, &c)
}

func (c UploadInfo) Value() (driver.Value, error) {
	return json.Marshal(c)
}
func (c *UploadInfo) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return errors.New("type assertion to []byte failed")
	}
	return json.Unmarshal(b, &c)
}

type Settings struct {
	Language                        string `json:"language,omitempty" gorm:"column:language" bson:"language,omitempty" dynamodbav:"language,omitempty" firestore:"language,omitempty"`
	DateFormat                      string `json:"dateFormat,omitempty" gorm:"column:date_format" bson:"dateFormat,omitempty" dynamodbav:"dateFormat,omitempty" firestore:"dateFormat,omitempty"`
	DateTimeFormat                  string `json:"dateTimeFormat,omitempty" gorm:"column:date_time_format" bson:"dateTimeFormat,omitempty" dynamodbav:"dateTimeFormat,omitempty" firestore:"dateTimeFormat,omitempty"`
	TimeFormat                      string `json:"timeFormat,omitempty" gorm:"column:time_format" bson:"timeFormat,omitempty" dynamodbav:"timeFormat,omitempty" firestore:"timeFormat,omitempty"`
	Notification                    bool   `json:"notification" gorm:"column:notification" bson:"notification" dynamodbav:"notification" firestore:"notification"`
	EmailCommentsOfYourPosts        bool   `json:"emailCommentsOfYourPosts" gorm:"column:emailCommentsOfYourPosts" bson:"emailCommentsOfYourPosts" dynamodbav:"emailCommentsOfYourPosts" firestore:"emailCommentsOfYourPosts"`
	EmailEventInvitations           bool   `json:"emailEventInvitations" gorm:"column:emailEventInvitations" bson:"emailEventInvitations" dynamodbav:"emailEventInvitations" firestore:"emailEventInvitations"`
	EmailFeedUpdates                bool   `json:"emailFeedUpdates" gorm:"column:emailFeedUpdates" bson:"emailFeedUpdates" dynamodbav:"emailFeedUpdates" firestore:"emailFeedUpdates"`
	EmailPostMentions               bool   `json:"emailPostMentions" gorm:"column:emailPostMentions" bson:"emailPostMentions" dynamodbav:"emailPostMentions" firestore:"emailPostMentions"`
	EmailWhenNewEventsAround        bool   `json:"emailWhenNewEventsAround" gorm:"column:emailWhenNewEventsAround" bson:"emailWhenNewEventsAround" dynamodbav:"emailWhenNewEventsAround" firestore:"emailWhenNewEventsAround"`
	FollowingListPublicOnMyProfile  bool   `json:"followingListPublicOnMyProfile" gorm:"column:followingListPublicOnMyProfile" bson:"followingListPublicOnMyProfile" dynamodbav:"followingListPublicOnMyProfile" firestore:"followingListPublicOnMyProfile"`
	SearchEnginesLinksToMyProfile   bool   `json:"searchEnginesLinksToMyProfile" gorm:"column:searchEnginesLinksToMyProfile" bson:"searchEnginesLinksToMyProfile" dynamodbav:"searchEnginesLinksToMyProfile" firestore:"searchEnginesLinksToMyProfile"`
	NotifyFeedUpdates               bool   `json:"notifyFeedUpdates" gorm:"column:notifyFeedUpdates" bson:"notifyFeedUpdates" dynamodbav:"notifyFeedUpdates" firestore:"notifyFeedUpdates"`
	NotifyPostMentions              bool   `json:"notifyPostMentions" gorm:"column:notifyPostMentions" bson:"notifyPostMentions" dynamodbav:"notifyPostMentions" firestore:"notifyPostMentions"`
	NotifyCommentsOfYourPosts       bool   `json:"notifyCommentsOfYourPosts" gorm:"column:notifyCommentsOfYourPosts" bson:"notifyCommentsOfYourPosts" dynamodbav:"notifyCommentsOfYourPosts" firestore:"notifyCommentsOfYourPosts"`
	NotifyEventInvitations          bool   `json:"notifyEventInvitations" gorm:"column:notifyEventInvitations" bson:"notifyEventInvitations" dynamodbav:"notifyEventInvitations" firestore:"notifyEventInvitations"`
	NotifyWhenNewEventsAround       bool   `json:"notifyWhenNewEventsAround" gorm:"column:notifyWhenNewEventsAround" bson:"notifyWhenNewEventsAround" dynamodbav:"notifyWhenNewEventsAround" firestore:"notifyWhenNewEventsAround"`
	ShowMyProfileInSpacesAroundMe   bool   `json:"showMyProfileInSpacesAroundMe" gorm:"column:showMyProfileInSpacesAroundMe" bson:"showMyProfileInSpacesAroundMe" dynamodbav:"showMyProfileInSpacesAroundMe" firestore:"showMyProfileInSpacesAroundMe"`
	ShowAroundMeResultsInMemberFeed bool   `json:"showAroundMeResultsInMemberFeed" gorm:"column:showAroundMeResultsInMemberFeed" bson:"showAroundMeResultsInMemberFeed" dynamodbav:"showAroundMeResultsInMemberFeed" firestore:"showAroundMeResultsInMemberFeed"`
}

func (c Settings) Value() (driver.Value, error) {
	return json.Marshal(c)
}
func (c *Settings) Scan(value interface{}) error {
	b, ok := value.([]byte)
	if !ok {
		return errors.New("type assertion to []byte failed")
	}
	return json.Unmarshal(b, &c)
}
