# WebhookNewContactPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**contactId** | **UUID** | Contact ID | 
**groupId** | **UUID** | Contact group ID | [optional] 
**firstName** | **String** | Contact first name | [optional] 
**lastName** | **String** | Contact last name | [optional] 
**company** | **String** | Contact company name | [optional] 
**primaryEmailAddress** | **String** | Primary email address for contact | [optional] 
**emailAddresses** | **[String]** | Email addresses for contact | 
**tags** | **[String]** | Tags for contact | 
**metaData** | [**AnyCodable**]() |  | [optional] 
**optOut** | **Bool** | Has contact opted out of emails | 
**createdAt** | **Date** | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


