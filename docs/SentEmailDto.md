# SentEmailDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** | ID of sent email | 
**userId** | **UUID** | User ID | 
**inboxId** | **UUID** | Inbox ID email was sent from | 
**to** | **[String]** | Recipients email was sent to | [optional] 
**from** | **String** |  | [optional] 
**replyTo** | **String** |  | [optional] 
**cc** | **[String]** |  | [optional] 
**bcc** | **[String]** |  | [optional] 
**attachments** | **[String]** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **String** |  | [optional] 
**bodyMD5Hash** | **String** | MD5 Hash | [optional] 
**body** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**isHTML** | **Bool** |  | [optional] 
**sentAt** | **Date** |  | 
**pixelIds** | **[UUID]** |  | [optional] 
**messageId** | **String** |  | [optional] 
**virtualSend** | **Bool** |  | [optional] 
**html** | **Bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


