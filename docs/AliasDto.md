# AliasDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** |  | 
**emailAddress** | **String** | The alias&#39;s email address for receiving email | 
**maskedEmailAddress** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**userId** | **UUID** |  | 
**inboxId** | **UUID** | Inbox that is associated with the alias | 
**name** | **String** |  | [optional] 
**useThreads** | **Bool** | If alias will generate response threads or not when email are received by it | [optional] 
**isVerified** | **Bool** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


