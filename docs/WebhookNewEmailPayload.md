# WebhookNewEmailPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachmentMetaDatas** | [AttachmentMetaData] | List of attachment meta data objects if attachments present | [optional] 
**bcc** | **[String]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**cc** | **[String]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**createdAt** | **Date** | Date time of event creation | [optional] 
**emailId** | **UUID** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**eventName** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**from** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**inboxId** | **UUID** | Id of the inbox that received an email | [optional] 
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**to** | **[String]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | [optional] 
**webhookId** | **UUID** | ID of webhook entity being triggered | [optional] 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


