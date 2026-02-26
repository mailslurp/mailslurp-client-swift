# WebhookEmailOpenedPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**inboxId** | **UUID** | Id of the inbox | 
**pixelId** | **UUID** | ID of the tracking pixel | 
**sentEmailId** | **UUID** | ID of sent email | 
**recipient** | **String** | Email address for the recipient of the tracking pixel | 
**createdAt** | **Date** | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


