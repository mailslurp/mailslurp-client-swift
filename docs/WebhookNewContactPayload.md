# WebhookNewContactPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | **String** |  | [optional] 
**contactId** | **UUID** |  | 
**createdAt** | **Date** |  | 
**emailAddresses** | **[String]** |  | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**firstName** | **String** |  | [optional] 
**groupId** | **UUID** |  | [optional] 
**lastName** | **String** |  | [optional] 
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**metaData** | **Any** |  | [optional] 
**optOut** | **Bool** |  | [optional] 
**primaryEmailAddress** | **String** |  | [optional] 
**tags** | **[String]** |  | 
**webhookId** | **UUID** | ID of webhook entity being triggered | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


