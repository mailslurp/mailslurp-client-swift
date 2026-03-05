# SentEmailDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **UUID** | ID of sent email | 
**userId** | **UUID** | User ID | 
**inboxId** | **UUID** | Inbox ID email was sent from | 
**domainId** | **UUID** | Domain ID | [optional] 
**to** | **[String]** | Recipients email was sent to | [optional] 
**from** | **String** | Sent from address | [optional] 
**sender** | [**Sender**](Sender) |  | [optional] 
**recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**replyTo** | **String** |  | [optional] 
**cc** | **[String]** |  | [optional] 
**bcc** | **[String]** |  | [optional] 
**attachments** | **[String]** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **String** |  | [optional] 
**bodyMD5Hash** | **String** | MD5 Hash | [optional] 
**body** | **String** | Sent email body | [optional] 
**toContacts** | **[UUID]** |  | [optional] 
**toGroup** | **UUID** |  | [optional] 
**charset** | **String** |  | [optional] 
**isHTML** | **Bool** |  | [optional] 
**sentAt** | **Date** |  | 
**createdAt** | **Date** |  | 
**pixelIds** | **[UUID]** |  | [optional] 
**messageId** | **String** | RFC 5322 Message-ID header value without angle brackets. | [optional] 
**messageIds** | **[String]** |  | [optional] 
**virtualSend** | **Bool** |  | [optional] 
**templateId** | **UUID** |  | [optional] 
**templateVariables** | **[String: JSONValue]** |  | [optional] 
**headers** | **[String: String]** |  | [optional] 
**threadId** | **UUID** | MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields. | [optional] 
**bodyExcerpt** | **String** | An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not | [optional] 
**textExcerpt** | **String** | An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists | [optional] 
**inReplyTo** | **String** | Parsed value of In-Reply-To header. A Message-ID in a thread. | [optional] 
**favourite** | **Bool** | Is email favourited | [optional] 
**sizeBytes** | **Int64** | Size of raw email message in bytes | [optional] 
**html** | **Bool** |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


