# EmailPreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **[String]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **[String]** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**cc** | **[String]** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**createdAt** | **Date** | When was the email received by MailSlurp | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**_id** | **UUID** | ID of the email | [optional] 
**read** | **Bool** | Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**to** | **[String]** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


