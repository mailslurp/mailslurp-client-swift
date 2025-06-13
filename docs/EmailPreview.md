# EmailPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** | ID of the email entity | 
**inboxId** | **UUID** | ID of the inbox that received the email | [optional] 
**domainId** | **UUID** | ID of the domain that received the email | [optional] 
**subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**to** | **[String]** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**from** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | [optional] 
**bcc** | **[String]** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**cc** | **[String]** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | [optional] 
**createdAt** | **Date** | When was the email received by MailSlurp | 
**read** | **Bool** | Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. | 
**attachments** | **[String]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**threadId** | **UUID** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**messageId** | **String** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**inReplyTo** | **String** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**favourite** | **Bool** |  | [optional] 
**bodyPartContentTypes** | **[String]** |  | [optional] 
**plusAddress** | **UUID** |  | [optional] 
**sizeBytes** | **Int64** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


