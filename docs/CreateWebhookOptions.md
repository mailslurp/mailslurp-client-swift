# CreateWebhookOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation. | 
**basicAuth** | [**BasicAuthOptions**](BasicAuthOptions) |  | [optional] 
**name** | **String** | Optional name for the webhook | [optional] 
**eventName** | **String** | Optional webhook event name. Default is &#x60;EMAIL_RECEIVED&#x60; and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name. | [optional] 
**includeHeaders** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 
**requestBodyTemplate** | **String** | Template for the JSON body of the webhook request that will be sent to your server. Use Moustache style &#x60;{{variableName}}&#x60; templating to use parts of the standard webhook payload for the given event. | [optional] 
**useStaticIpRange** | **Bool** | Use static IP range when calling webhook endpoint | [optional] [default to false]
**ignoreInsecureSslCertificates** | **Bool** | Ignore insecure SSL certificates when sending request. Useful for self-signed certs. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


