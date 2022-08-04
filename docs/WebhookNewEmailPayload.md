# WebhookNewEmailPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messageId** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhookId** | **UUID** | ID of webhook entity being triggered | 
**eventName** | **String** | Name of the event type webhook is being triggered for. | 
**webhookName** | **String** | Name of the webhook being triggered | [optional] 
**inboxId** | **UUID** | Id of the inbox that received an email | 
**domainId** | **UUID** | Id of the domain that received an email | [optional] 
**emailId** | **UUID** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**createdAt** | **Date** | Date time of event creation | 
**to** | **[String]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**from** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | 
**cc** | **[String]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**bcc** | **[String]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**attachmentMetaDatas** | [AttachmentMetaData] | List of attachment meta data objects if attachments present | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


