# WebhookNewSmsPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**smsId** | **UUID** | ID of SMS message | 
**userId** | **UUID** | User ID of event | 
**phoneNumber** | **UUID** | ID of phone number receiving SMS | 
**toNumber** | **String** | Recipient phone number | 
**fromNumber** | **String** | Sender phone number | 
**body** | **String** | SMS message body | 
**read** | **Bool** | SMS has been read | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


