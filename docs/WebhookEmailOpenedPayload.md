# WebhookEmailOpenedPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhookId** | **UUID** | ID of webhook entity being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**inboxId** | **UUID** | Id of the inbox that received an email | [optional] 
**pixelId** | **UUID** | ID of the tracking pixel | [optional] 
**sentEmailId** | **UUID** | ID of sent email | [optional] 
**recipient** | **String** | Email address for the recipient of the tracking pixel | [optional] 
**createdAt** | **Date** | Date time of event creation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


