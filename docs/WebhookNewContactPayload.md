# WebhookNewContactPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**contactId** | **UUID** |  | 
**groupId** | **UUID** |  | [optional] 
**firstName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**primaryEmailAddress** | **String** |  | [optional] 
**emailAddresses** | **Set<String>** |  | 
**tags** | **Set<String>** |  | 
**metaData** | [**AnyCodable**]() |  | [optional] 
**optOut** | **Bool** |  | [optional] 
**createdAt** | **Date** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


