# EmailThreadDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** | ID of email thread | 
**userId** | **UUID** | User ID | 
**inboxId** | **UUID** | Inbox ID | [optional] 
**from** | **String** | From sender | [optional] 
**to** | **[String]** | To recipients | 
**cc** | **[String]** | CC recipients | [optional] 
**bcc** | **[String]** | BCC recipients | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**subject** | **String** | Thread topic subject | [optional] 
**createdAt** | **Date** | Created at DateTime | 
**updatedAt** | **Date** | Updated at DateTime | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


