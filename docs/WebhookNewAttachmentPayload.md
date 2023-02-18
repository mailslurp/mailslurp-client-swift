# WebhookNewAttachmentPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**attachmentId** | **String** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | 
**name** | **String** | Filename of the attachment if present | 
**contentType** | **String** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | 
**contentLength** | **Int64** | Size of attachment in bytes | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


