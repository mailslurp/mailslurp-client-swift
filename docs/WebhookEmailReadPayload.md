# WebhookEmailReadPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**emailId** | **UUID** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**inboxId** | **UUID** | Id of the inbox that received an email | 
**emailIsRead** | **Bool** | Is the email read | 
**createdAt** | **Date** | Date time of event creation | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


