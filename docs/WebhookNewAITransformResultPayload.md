# WebhookNewAITransformResultPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**aiTransformResultId** | **UUID** | AI Transform ID of event | 
**userId** | **UUID** | User ID of event | 
**aiTransformId** | **UUID** | ID of AI Transform | 
**aiTransformMappingId** | **UUID** | ID of AI Transform mapping | [optional] 
**entityId** | **UUID** | ID of entity that triggered the transformation | [optional] 
**entityType** | **String** | Entity type that triggered the transformation | [optional] 
**result** | **String** | JSON string result of the AI transformation | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


