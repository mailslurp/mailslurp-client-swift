# CreateContactOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**emailAddresses** | **[String]** | Set of email addresses belonging to the contact | [optional] 
**tags** | **[String]** | Tags that can be used to search and group contacts | [optional] 
**metaData** | [**AnyCodable**]() |  | [optional] 
**optOut** | **Bool** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**groupId** | **UUID** | Group IDs that contact belongs to | [optional] 
**verifyEmailAddresses** | **Bool** | Whether to validate contact email address exists | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


