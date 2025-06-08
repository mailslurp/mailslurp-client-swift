# EmailThreadProjection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**recipients** | [**EmailRecipientsProjection**](EmailRecipientsProjection) |  | [optional] 
**inboxId** | **UUID** | Inbox ID | [optional] 
**userId** | **UUID** | User ID | 
**updatedAt** | **Date** | Updated at DateTime | 
**createdAt** | **Date** | Created at DateTime | 
**to** | **[String]** | To recipients | 
**cc** | **[String]** | CC recipients | [optional] 
**bcc** | **[String]** | BCC recipients | [optional] 
**hasAttachments** | **Bool** | Has attachments | 
**unread** | **Bool** | Has unread | 
**messageCount** | **Int** | Number of messages in the thread | 
**lastBodyExcerpt** | **String** | Last body excerpt | [optional] 
**lastTextExcerpt** | **String** | Last text excerpt | [optional] 
**lastCreatedAt** | **Date** | Last email created time | [optional] 
**lastFrom** | **String** | Last sender | [optional] 
**lastSender** | [**SenderProjection**](SenderProjection) |  | [optional] 
**subject** | **String** | Thread topic subject | [optional] 
**_id** | **UUID** | ID of email thread | 
**from** | **String** | From sender | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


