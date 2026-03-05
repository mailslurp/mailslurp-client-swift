# WebhookDeliveryStatusPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**_id** | **UUID** | ID of delivery status | 
**userId** | **UUID** | User ID of event | 
**sentId** | **UUID** | ID of sent email | [optional] 
**remoteMtaIp** | **String** | IP address of the remote Mail Transfer Agent | [optional] 
**inboxId** | **UUID** | Id of the inbox | [optional] 
**reportingMta** | **String** | Mail Transfer Agent reporting delivery status | [optional] 
**recipients** | **[String]** | Recipients for delivery | [optional] 
**smtpResponse** | **String** | SMTP server response message | [optional] 
**smtpStatusCode** | **Int** | SMTP server status | [optional] 
**processingTimeMillis** | **Int64** | Time in milliseconds for delivery processing | [optional] 
**received** | **Date** | Time event was received | [optional] 
**subject** | **String** | Email subject | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


