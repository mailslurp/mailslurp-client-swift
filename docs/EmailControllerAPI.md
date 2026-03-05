# EmailControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyImapFlagOperation**](EmailControllerAPI#applyimapflagoperation) | **POST** /emails/{emailId}/imap-flag-operation | Set IMAP flags associated with a message. Only supports &#39;\\Seen&#39; flag.
[**canSend**](EmailControllerAPI#cansend) | **POST** /emails/can-send | Check whether an email send would be accepted
[**checkEmailBody**](EmailControllerAPI#checkemailbody) | **POST** /emails/{emailId}/check-email-body | Check email body for broken links, images, and spelling issues
[**checkEmailBodyFeatureSupport**](EmailControllerAPI#checkemailbodyfeaturesupport) | **POST** /emails/{emailId}/check-email-body-feature-support | Check client support for features used in a stored email body
[**checkEmailClientSupport**](EmailControllerAPI#checkemailclientsupport) | **POST** /emails/check-email-client-support | Check email-client support for a provided HTML body
[**deleteAllEmails**](EmailControllerAPI#deleteallemails) | **DELETE** /emails | Delete all emails in all inboxes.
[**deleteEmail**](EmailControllerAPI#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](EmailControllerAPI#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**downloadAttachmentBase64**](EmailControllerAPI#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**downloadBody**](EmailControllerAPI#downloadbody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**downloadBodyBytes**](EmailControllerAPI#downloadbodybytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forwardEmail**](EmailControllerAPI#forwardemail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**getAttachmentMetaData**](EmailControllerAPI#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**getEmail**](EmailControllerAPI#getemail) | **GET** /emails/{emailId} | Get hydrated email (headers and body)
[**getEmailAttachments**](EmailControllerAPI#getemailattachments) | **GET** /emails/{emailId}/attachments | List attachment metadata for an email
[**getEmailCodes**](EmailControllerAPI#getemailcodes) | **POST** /emails/{emailId}/codes | Extract verification codes from an email
[**getEmailContentMatch**](EmailControllerAPI#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Run regex against hydrated email body and return matches
[**getEmailContentPart**](EmailControllerAPI#getemailcontentpart) | **GET** /emails/{emailId}/contentPart | Get email content part by content type
[**getEmailContentPartContent**](EmailControllerAPI#getemailcontentpartcontent) | **GET** /emails/{emailId}/contentPart/raw | Get multipart content part as raw response
[**getEmailCount**](EmailControllerAPI#getemailcount) | **GET** /emails/emails/count | Get email count
[**getEmailHTML**](EmailControllerAPI#getemailhtml) | **GET** /emails/{emailId}/html | Get hydrated email HTML for browser rendering
[**getEmailHTMLJson**](EmailControllerAPI#getemailhtmljson) | **GET** /emails/{emailId}/html/json | Get hydrated email HTML wrapped in JSON
[**getEmailHTMLQuery**](EmailControllerAPI#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Query hydrated HTML body and return matching text lines
[**getEmailLinks**](EmailControllerAPI#getemaillinks) | **GET** /emails/{emailId}/links | Extract links from an email HTML body
[**getEmailPreviewURLs**](EmailControllerAPI#getemailpreviewurls) | **GET** /emails/{emailId}/urls | Get email URLs for viewing in browser or downloading
[**getEmailScreenshotAsBase64**](EmailControllerAPI#getemailscreenshotasbase64) | **POST** /emails/{emailId}/screenshot/base64 | Take a screenshot of an email in a browser and return base64 encoded string
[**getEmailScreenshotAsBinary**](EmailControllerAPI#getemailscreenshotasbinary) | **POST** /emails/{emailId}/screenshot/binary | Take a screenshot of an email in a browser
[**getEmailSignature**](EmailControllerAPI#getemailsignature) | **GET** /emails/{emailId}/signature | Extract signature from an inbound email
[**getEmailSummary**](EmailControllerAPI#getemailsummary) | **GET** /emails/{emailId}/summary | Get email summary (headers/metadata only)
[**getEmailTextLines**](EmailControllerAPI#getemailtextlines) | **GET** /emails/{emailId}/textLines | Extract normalized text lines from email body
[**getEmailThread**](EmailControllerAPI#getemailthread) | **GET** /emails/threads/{threadId} | Get email thread metadata by thread ID
[**getEmailThreadItems**](EmailControllerAPI#getemailthreaditems) | **GET** /emails/threads/{threadId}/items | Get messages in a specific email thread
[**getEmailThreads**](EmailControllerAPI#getemailthreads) | **GET** /emails/threads | List email threads in paginated form
[**getEmailsOffsetPaginated**](EmailControllerAPI#getemailsoffsetpaginated) | **GET** /emails/offset-paginated | Get all emails in all inboxes in paginated form. Email API list all.
[**getEmailsPaginated**](EmailControllerAPI#getemailspaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**getGravatarUrlForEmailAddress**](EmailControllerAPI#getgravatarurlforemailaddress) | **GET** /emails/gravatarFor | Get Gravatar URL for an email address
[**getLatestEmail**](EmailControllerAPI#getlatestemail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**getLatestEmailInInbox1**](EmailControllerAPI#getlatestemailininbox1) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**getOrganizationEmailsPaginated**](EmailControllerAPI#getorganizationemailspaginated) | **GET** /emails/organization | List organization-visible emails
[**getRawEmailContents**](EmailControllerAPI#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**getRawEmailJson**](EmailControllerAPI#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getUnreadEmailCount**](EmailControllerAPI#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**markAllAsRead**](EmailControllerAPI#markallasread) | **PATCH** /emails/read | Mark all emails as read or unread
[**markAsRead**](EmailControllerAPI#markasread) | **PATCH** /emails/{emailId}/read | Mark an email as read or unread
[**replyToEmail**](EmailControllerAPI#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**searchEmails**](EmailControllerAPI#searchemails) | **POST** /emails/search | Get all emails by search criteria. Return in paginated form.
[**sendEmailSourceOptional**](EmailControllerAPI#sendemailsourceoptional) | **POST** /emails | Send email
[**setEmailFavourited**](EmailControllerAPI#setemailfavourited) | **PUT** /emails/{emailId}/favourite | Set email favourited state
[**validateEmail**](EmailControllerAPI#validateemail) | **POST** /emails/{emailId}/validate | Validate email HTML contents


# **applyImapFlagOperation**
```swift
    open class func applyImapFlagOperation( emailId: UUID,  imapFlagOperationOptions: ImapFlagOperationOptions) -> Promise<EmailPreview>
```

Set IMAP flags associated with a message. Only supports '\\Seen' flag.

Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let imapFlagOperationOptions = ImapFlagOperationOptions(flagOperation: "flagOperation_example", flags: ["flags_example"]) // ImapFlagOperationOptions | 

// Set IMAP flags associated with a message. Only supports '\\Seen' flag.
EmailControllerAPI.applyImapFlagOperation(emailId: emailId, imapFlagOperationOptions: imapFlagOperationOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **imapFlagOperationOptions** | [**ImapFlagOperationOptions**](ImapFlagOperationOptions) |  | 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **canSend**
```swift
    open class func canSend( inboxId: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<CanSendEmailResults>
```

Check whether an email send would be accepted

Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", fromName: "fromName_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 

// Check whether an email send would be accepted
EmailControllerAPI.canSend(inboxId: inboxId, sendEmailOptions: sendEmailOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

[**CanSendEmailResults**](CanSendEmailResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailBody**
```swift
    open class func checkEmailBody( emailId: UUID) -> Promise<CheckEmailBodyResults>
```

Check email body for broken links, images, and spelling issues

Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 

// Check email body for broken links, images, and spelling issues
EmailControllerAPI.checkEmailBody(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 

### Return type

[**CheckEmailBodyResults**](CheckEmailBodyResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailBodyFeatureSupport**
```swift
    open class func checkEmailBodyFeatureSupport( emailId: UUID) -> Promise<CheckEmailBodyFeatureSupportResults>
```

Check client support for features used in a stored email body

Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 

// Check client support for features used in a stored email body
EmailControllerAPI.checkEmailBodyFeatureSupport(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 

### Return type

[**CheckEmailBodyFeatureSupportResults**](CheckEmailBodyFeatureSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **checkEmailClientSupport**
```swift
    open class func checkEmailClientSupport( checkEmailClientSupportOptions: CheckEmailClientSupportOptions) -> Promise<CheckEmailClientSupportResults>
```

Check email-client support for a provided HTML body

Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let checkEmailClientSupportOptions = CheckEmailClientSupportOptions(emailBody: "emailBody_example") // CheckEmailClientSupportOptions | 

// Check email-client support for a provided HTML body
EmailControllerAPI.checkEmailClientSupport(checkEmailClientSupportOptions: checkEmailClientSupportOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checkEmailClientSupportOptions** | [**CheckEmailClientSupportOptions**](CheckEmailClientSupportOptions) |  | 

### Return type

[**CheckEmailClientSupportResults**](CheckEmailClientSupportResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllEmails**
```swift
    open class func deleteAllEmails() -> Promise<Void>
```

Delete all emails in all inboxes.

Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all emails in all inboxes.
EmailControllerAPI.deleteAllEmails().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmail**
```swift
    open class func deleteEmail( emailId: UUID) -> Promise<Void>
```

Delete an email

Deletes a single email from account scope. Operation is destructive and not reversible.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to delete

// Delete an email
EmailControllerAPI.deleteEmail(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to delete | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachment**
```swift
    open class func downloadAttachment( emailId: UUID,  attachmentId: String,  apiKey: String? = nil) -> Promise<Data>
```

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email
let attachmentId = "attachmentId_example" // String | ID of attachment
let apiKey = "apiKey_example" // String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)

// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
EmailControllerAPI.downloadAttachment(emailId: emailId, attachmentId: attachmentId, apiKey: apiKey).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 
 **attachmentId** | **String** | ID of attachment | 
 **apiKey** | **String** | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**Data**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentBase64**
```swift
    open class func downloadAttachmentBase64( emailId: UUID,  attachmentId: String) -> Promise<DownloadAttachmentDto>
```

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email
let attachmentId = "attachmentId_example" // String | ID of attachment

// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
EmailControllerAPI.downloadAttachmentBase64(emailId: emailId, attachmentId: attachmentId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 
 **attachmentId** | **String** | ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBody**
```swift
    open class func downloadBody( emailId: UUID) -> Promise<String>
```

Get email body as string. Returned as `plain/text` with content type header.

Returns hydrated email body text as a string with content type aligned to the underlying body format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get email body as string. Returned as `plain/text` with content type header.
EmailControllerAPI.downloadBody(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBodyBytes**
```swift
    open class func downloadBodyBytes( emailId: UUID) -> Promise<Data>
```

Get email body in bytes. Returned as `octet-stream` with content type header.

Streams hydrated email body bytes with content type derived from the message body format.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get email body in bytes. Returned as `octet-stream` with content type header.
EmailControllerAPI.downloadBodyBytes(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

**Data**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **forwardEmail**
```swift
    open class func forwardEmail( emailId: UUID,  forwardEmailOptions: ForwardEmailOptions) -> Promise<SentEmailDto>
```

Forward email to recipients

Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email
let forwardEmailOptions = ForwardEmailOptions(to: ["to_example"], subject: "subject_example", cc: ["cc_example"], bcc: ["bcc_example"], from: "from_example", useInboxName: false, filterBouncedRecipients: false) // ForwardEmailOptions | 

// Forward email to recipients
EmailControllerAPI.forwardEmail(emailId: emailId, forwardEmailOptions: forwardEmailOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 
 **forwardEmailOptions** | [**ForwardEmailOptions**](ForwardEmailOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentMetaData**
```swift
    open class func getAttachmentMetaData( emailId: UUID,  attachmentId: String) -> Promise<AttachmentMetaData>
```

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

Returns metadata for a specific attachment ID (name, content type, and size fields).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email
let attachmentId = "attachmentId_example" // String | ID of attachment

// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
EmailControllerAPI.getAttachmentMetaData(emailId: emailId, attachmentId: attachmentId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 
 **attachmentId** | **String** | ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmail**
```swift
    open class func getEmail( emailId: UUID) -> Promise<Email>
```

Get hydrated email (headers and body)

Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 

// Get hydrated email (headers and body)
EmailControllerAPI.getEmail(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAttachments**
```swift
    open class func getEmailAttachments( emailId: UUID) -> Promise<[AttachmentMetaData]>
```

List attachment metadata for an email

Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// List attachment metadata for an email
EmailControllerAPI.getEmailAttachments(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

[**[AttachmentMetaData]**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailCodes**
```swift
    open class func getEmailCodes( emailId: UUID,  extractCodesOptions: ExtractCodesOptions? = nil) -> Promise<ExtractCodesResult>
```

Extract verification codes from an email

Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to extract codes from
let extractCodesOptions = ExtractCodesOptions(method: "method_example", allowFallback: false, minLength: 123, maxLength: 123, maxCandidates: 123, customPatterns: ["customPatterns_example"]) // ExtractCodesOptions |  (optional)

// Extract verification codes from an email
EmailControllerAPI.getEmailCodes(emailId: emailId, extractCodesOptions: extractCodesOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to extract codes from | 
 **extractCodesOptions** | [**ExtractCodesOptions**](ExtractCodesOptions) |  | [optional] 

### Return type

[**ExtractCodesResult**](ExtractCodesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentMatch**
```swift
    open class func getEmailContentMatch( emailId: UUID,  contentMatchOptions: ContentMatchOptions) -> Promise<EmailContentMatchResult>
```

Run regex against hydrated email body and return matches

Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to match against
let contentMatchOptions = ContentMatchOptions(pattern: "pattern_example") // ContentMatchOptions | 

// Run regex against hydrated email body and return matches
EmailControllerAPI.getEmailContentMatch(emailId: emailId, contentMatchOptions: contentMatchOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to match against | 
 **contentMatchOptions** | [**ContentMatchOptions**](ContentMatchOptions) |  | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentPart**
```swift
    open class func getEmailContentPart( emailId: UUID,  contentType: String,  strict: Bool? = nil,  index: Int? = nil) -> Promise<EmailContentPartResult>
```

Get email content part by content type

Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to match against
let contentType = "contentType_example" // String | Content type
let strict = true // Bool | Strict content type match (optional)
let index = 987 // Int | Index of content type part if multiple (optional)

// Get email content part by content type
EmailControllerAPI.getEmailContentPart(emailId: emailId, contentType: contentType, strict: strict, index: index).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to match against | 
 **contentType** | **String** | Content type | 
 **strict** | **Bool** | Strict content type match | [optional] 
 **index** | **Int** | Index of content type part if multiple | [optional] 

### Return type

[**EmailContentPartResult**](EmailContentPartResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/xml;charset=UTF-8, application/json; charset=UTF-8, application/xml; charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentPartContent**
```swift
    open class func getEmailContentPartContent( emailId: UUID,  contentType: String,  strict: Bool? = nil,  index: Int? = nil) -> Promise<String>
```

Get multipart content part as raw response

Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to match against
let contentType = "contentType_example" // String | Content type
let strict = true // Bool | Strict content type match (optional)
let index = 987 // Int | Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. (optional)

// Get multipart content part as raw response
EmailControllerAPI.getEmailContentPartContent(emailId: emailId, contentType: contentType, strict: strict, index: index).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to match against | 
 **contentType** | **String** | Content type | 
 **strict** | **Bool** | Strict content type match | [optional] 
 **index** | **Int** | Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailCount**
```swift
    open class func getEmailCount( inboxId: UUID? = nil) -> Promise<CountDto>
```

Get email count

Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID |  (optional)

// Get email count
EmailControllerAPI.getEmailCount(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** |  | [optional] 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
```swift
    open class func getEmailHTML( emailId: UUID,  replaceCidImages: Bool? = nil) -> Promise<String>
```

Get hydrated email HTML for browser rendering

Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let replaceCidImages = true // Bool |  (optional) (default to false)

// Get hydrated email HTML for browser rendering
EmailControllerAPI.getEmailHTML(emailId: emailId, replaceCidImages: replaceCidImages).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **replaceCidImages** | **Bool** |  | [optional] [default to false]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLJson**
```swift
    open class func getEmailHTMLJson( emailId: UUID,  replaceCidImages: Bool? = nil) -> Promise<EmailHtmlDto>
```

Get hydrated email HTML wrapped in JSON

Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let replaceCidImages = true // Bool |  (optional) (default to false)

// Get hydrated email HTML wrapped in JSON
EmailControllerAPI.getEmailHTMLJson(emailId: emailId, replaceCidImages: replaceCidImages).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **replaceCidImages** | **Bool** |  | [optional] [default to false]

### Return type

[**EmailHtmlDto**](EmailHtmlDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLQuery**
```swift
    open class func getEmailHTMLQuery( emailId: UUID,  htmlSelector: String) -> Promise<EmailTextLinesResult>
```

Query hydrated HTML body and return matching text lines

Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to perform HTML query on
let htmlSelector = "htmlSelector_example" // String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

// Query hydrated HTML body and return matching text lines
EmailControllerAPI.getEmailHTMLQuery(emailId: emailId, htmlSelector: htmlSelector).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to perform HTML query on | 
 **htmlSelector** | **String** | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailLinks**
```swift
    open class func getEmailLinks( emailId: UUID,  selector: String? = nil) -> Promise<EmailLinksResult>
```

Extract links from an email HTML body

Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to fetch text for
let selector = "selector_example" // String | Optional HTML query selector for links (optional)

// Extract links from an email HTML body
EmailControllerAPI.getEmailLinks(emailId: emailId, selector: selector).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to fetch text for | 
 **selector** | **String** | Optional HTML query selector for links | [optional] 

### Return type

[**EmailLinksResult**](EmailLinksResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailPreviewURLs**
```swift
    open class func getEmailPreviewURLs( emailId: UUID) -> Promise<EmailPreviewUrls>
```

Get email URLs for viewing in browser or downloading

Returns precomputed URLs for preview and raw message access for the specified email.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 

// Get email URLs for viewing in browser or downloading
EmailControllerAPI.getEmailPreviewURLs(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailScreenshotAsBase64**
```swift
    open class func getEmailScreenshotAsBase64( emailId: UUID,  getEmailScreenshotOptions: GetEmailScreenshotOptions) -> Promise<EmailScreenshotResult>
```

Take a screenshot of an email in a browser and return base64 encoded string

Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let getEmailScreenshotOptions = GetEmailScreenshotOptions(height: 123, width: 123) // GetEmailScreenshotOptions | 

// Take a screenshot of an email in a browser and return base64 encoded string
EmailControllerAPI.getEmailScreenshotAsBase64(emailId: emailId, getEmailScreenshotOptions: getEmailScreenshotOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **getEmailScreenshotOptions** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions) |  | 

### Return type

[**EmailScreenshotResult**](EmailScreenshotResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailScreenshotAsBinary**
```swift
    open class func getEmailScreenshotAsBinary( emailId: UUID,  getEmailScreenshotOptions: GetEmailScreenshotOptions) -> Promise<Void>
```

Take a screenshot of an email in a browser

Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let getEmailScreenshotOptions = GetEmailScreenshotOptions(height: 123, width: 123) // GetEmailScreenshotOptions | 

// Take a screenshot of an email in a browser
EmailControllerAPI.getEmailScreenshotAsBinary(emailId: emailId, getEmailScreenshotOptions: getEmailScreenshotOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **getEmailScreenshotOptions** | [**GetEmailScreenshotOptions**](GetEmailScreenshotOptions) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailSignature**
```swift
    open class func getEmailSignature( emailId: UUID) -> Promise<EmailSignatureParseResult>
```

Extract signature from an inbound email

Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to extract signature from

// Extract signature from an inbound email
EmailControllerAPI.getEmailSignature(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to extract signature from | 

### Return type

[**EmailSignatureParseResult**](EmailSignatureParseResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailSummary**
```swift
    open class func getEmailSummary( emailId: UUID,  decode: Bool? = nil) -> Promise<EmailPreview>
```

Get email summary (headers/metadata only)

Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let decode = true // Bool | Deprecated and ignored. Retained for backwards compatibility. (optional)

// Get email summary (headers/metadata only)
EmailControllerAPI.getEmailSummary(emailId: emailId, decode: decode).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **decode** | **Bool** | Deprecated and ignored. Retained for backwards compatibility. | [optional] 

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailTextLines**
```swift
    open class func getEmailTextLines( emailId: UUID,  decodeHtmlEntities: Bool? = nil,  lineSeparator: String? = nil) -> Promise<EmailTextLinesResult>
```

Extract normalized text lines from email body

Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to fetch text for
let decodeHtmlEntities = true // Bool | Decode HTML entities (optional)
let lineSeparator = "lineSeparator_example" // String | Line separator character (optional)

// Extract normalized text lines from email body
EmailControllerAPI.getEmailTextLines(emailId: emailId, decodeHtmlEntities: decodeHtmlEntities, lineSeparator: lineSeparator).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to fetch text for | 
 **decodeHtmlEntities** | **Bool** | Decode HTML entities | [optional] 
 **lineSeparator** | **String** | Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThread**
```swift
    open class func getEmailThread( threadId: UUID) -> Promise<EmailThreadDto>
```

Get email thread metadata by thread ID

Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let threadId = 987 // UUID | 

// Get email thread metadata by thread ID
EmailControllerAPI.getEmailThread(threadId: threadId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **UUID** |  | 

### Return type

[**EmailThreadDto**](EmailThreadDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThreadItems**
```swift
    open class func getEmailThreadItems( threadId: UUID,  sort: Sort_getEmailThreadItems? = nil) -> Promise<EmailThreadItemsDto>
```

Get messages in a specific email thread

Returns all messages in a thread ordered by `createdAt` using the requested sort direction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let threadId = 987 // UUID | 
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get messages in a specific email thread
EmailControllerAPI.getEmailThreadItems(threadId: threadId, sort: sort).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **UUID** |  | 
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**EmailThreadItemsDto**](EmailThreadItemsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailThreads**
```swift
    open class func getEmailThreads( htmlSelector: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getEmailThreads? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailThreadProjection>
```

List email threads in paginated form

Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let htmlSelector = 987 // UUID | Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility. (optional)
let page = 987 // Int | Optional page index in email thread pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter search filter for email threads. (optional)
let since = Date() // Date | Optional filter email threads created since time (optional)
let before = Date() // Date | Optional filter emails threads created before given date time (optional)

// List email threads in paginated form
EmailControllerAPI.getEmailThreads(htmlSelector: htmlSelector, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **htmlSelector** | **UUID** | Optional inbox filter. Query parameter name is &#x60;htmlSelector&#x60; for legacy compatibility. | [optional] 
 **page** | **Int** | Optional page index in email thread pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter search filter for email threads. | [optional] 
 **since** | **Date** | Optional filter email threads created since time | [optional] 
 **before** | **Date** | Optional filter emails threads created before given date time | [optional] 

### Return type

[**PageEmailThreadProjection**](PageEmailThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsOffsetPaginated**
```swift
    open class func getEmailsOffsetPaginated( inboxId: [UUID]? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getEmailsOffsetPaginated? = nil,  unreadOnly: Bool? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  favourited: Bool? = nil,  syncConnectors: Bool? = nil,  plusAddressId: UUID? = nil,  include: [UUID]? = nil) -> Promise<PageEmailProjection>
```

Get all emails in all inboxes in paginated form. Email API list all.

Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let searchFilter = "searchFilter_example" // String | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. (optional)
let since = Date() // Date | Optional filter emails received after given date time (optional)
let before = Date() // Date | Optional filter emails received before given date time (optional)
let favourited = true // Bool | Optional filter emails that are favourited (optional)
let syncConnectors = true // Bool | Sync connectors (optional)
let plusAddressId = 987 // UUID | Optional plus address ID filter (optional)
let include = [123] // [UUID] | Optional list of IDs to include in result (optional)

// Get all emails in all inboxes in paginated form. Email API list all.
EmailControllerAPI.getEmailsOffsetPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before, favourited: favourited, syncConnectors: syncConnectors, plusAddressId: plusAddressId, include: include).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**[UUID]**](UUID) | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Int** | Optional page index in email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **searchFilter** | **String** | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. | [optional] 
 **since** | **Date** | Optional filter emails received after given date time | [optional] 
 **before** | **Date** | Optional filter emails received before given date time | [optional] 
 **favourited** | **Bool** | Optional filter emails that are favourited | [optional] 
 **syncConnectors** | **Bool** | Sync connectors | [optional] 
 **plusAddressId** | **UUID** | Optional plus address ID filter | [optional] 
 **include** | [**[UUID]**](UUID) | Optional list of IDs to include in result | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsPaginated**
```swift
    open class func getEmailsPaginated( inboxId: [UUID]? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getEmailsPaginated? = nil,  unreadOnly: Bool? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  syncConnectors: Bool? = nil,  plusAddressId: UUID? = nil,  favourited: Bool? = nil) -> Promise<PageEmailProjection>
```

Get all emails in all inboxes in paginated form. Email API list all.

Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let searchFilter = "searchFilter_example" // String | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. (optional)
let since = Date() // Date | Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
let before = Date() // Date | Optional filter emails received before given date time (optional)
let syncConnectors = true // Bool | Sync connectors (optional)
let plusAddressId = 987 // UUID | Optional plus address ID filter (optional)
let favourited = true // Bool | Optional filter emails that are favourited (optional)

// Get all emails in all inboxes in paginated form. Email API list all.
EmailControllerAPI.getEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before, syncConnectors: syncConnectors, plusAddressId: plusAddressId, favourited: favourited).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**[UUID]**](UUID) | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Int** | Optional page index in email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **searchFilter** | **String** | Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID. | [optional] 
 **since** | **Date** | Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **Date** | Optional filter emails received before given date time | [optional] 
 **syncConnectors** | **Bool** | Sync connectors | [optional] 
 **plusAddressId** | **UUID** | Optional plus address ID filter | [optional] 
 **favourited** | **Bool** | Optional filter emails that are favourited | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGravatarUrlForEmailAddress**
```swift
    open class func getGravatarUrlForEmailAddress( emailAddress: String,  size: String? = nil) -> Promise<GravatarUrl>
```

Get Gravatar URL for an email address

Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | 
let size = "size_example" // String |  (optional)

// Get Gravatar URL for an email address
EmailControllerAPI.getGravatarUrlForEmailAddress(emailAddress: emailAddress, size: size).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String** |  | 
 **size** | **String** |  | [optional] 

### Return type

[**GravatarUrl**](GravatarUrl)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmail**
```swift
    open class func getLatestEmail( inboxIds: [UUID]? = nil) -> Promise<Email>
```

Get latest email in all inboxes. Most recently received.

Returns the most recently received email across all inboxes or an optional subset of inbox IDs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxIds = [123] // [UUID] | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes (optional)

// Get latest email in all inboxes. Most recently received.
EmailControllerAPI.getLatestEmail(inboxIds: inboxIds).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxIds** | [**[UUID]**](UUID) | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox1**
```swift
    open class func getLatestEmailInInbox1( inboxId: UUID) -> Promise<Email>
```

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to get the latest email from

// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
EmailControllerAPI.getLatestEmailInInbox1(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | ID of the inbox you want to get the latest email from | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationEmailsPaginated**
```swift
    open class func getOrganizationEmailsPaginated( inboxId: [UUID]? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getOrganizationEmailsPaginated? = nil,  unreadOnly: Bool? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  syncConnectors: Bool? = nil,  favourited: Bool? = nil,  plusAddressId: UUID? = nil) -> Promise<PageEmailProjection>
```

List organization-visible emails

Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let searchFilter = "searchFilter_example" // String | Optional search filter search filter for emails. (optional)
let since = Date() // Date | Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
let before = Date() // Date | Optional filter emails received before given date time (optional)
let syncConnectors = true // Bool | Sync connectors (optional)
let favourited = true // Bool | Search only favorited emails (optional)
let plusAddressId = 987 // UUID | Optional plus address ID filter (optional)

// List organization-visible emails
EmailControllerAPI.getOrganizationEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before, syncConnectors: syncConnectors, favourited: favourited, plusAddressId: plusAddressId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**[UUID]**](UUID) | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Int** | Optional page index in email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **searchFilter** | **String** | Optional search filter search filter for emails. | [optional] 
 **since** | **Date** | Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **Date** | Optional filter emails received before given date time | [optional] 
 **syncConnectors** | **Bool** | Sync connectors | [optional] 
 **favourited** | **Bool** | Search only favorited emails | [optional] 
 **plusAddressId** | **UUID** | Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailContents**
```swift
    open class func getRawEmailContents( emailId: UUID) -> Promise<Void>
```

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw email string. Returns unparsed raw SMTP message with headers and body.
EmailControllerAPI.getRawEmailContents(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailJson**
```swift
    open class func getRawEmailJson( emailId: UUID) -> Promise<RawEmailJson>
```

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
EmailControllerAPI.getRawEmailJson(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadEmailCount**
```swift
    open class func getUnreadEmailCount( inboxId: UUID? = nil) -> Promise<UnreadCount>
```

Get unread email count

Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox ID filter for unread count scope (optional)

// Get unread email count
EmailControllerAPI.getUnreadEmailCount(inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | **UUID** | Inbox ID filter for unread count scope | [optional] 

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAllAsRead**
```swift
    open class func markAllAsRead( read: Bool? = nil,  inboxId: UUID? = nil) -> Promise<Void>
```

Mark all emails as read or unread

Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let read = true // Bool | What value to assign to email read property. Default true. (optional) (default to true)
let inboxId = 987 // UUID | Optional inbox ID filter (optional)

// Mark all emails as read or unread
EmailControllerAPI.markAllAsRead(read: read, inboxId: inboxId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **read** | **Bool** | What value to assign to email read property. Default true. | [optional] [default to true]
 **inboxId** | **UUID** | Optional inbox ID filter | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **markAsRead**
```swift
    open class func markAsRead( emailId: UUID,  read: Bool? = nil) -> Promise<EmailPreview>
```

Mark an email as read or unread

Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let read = true // Bool | What value to assign to email read property. Default true. (optional) (default to true)

// Mark an email as read or unread
EmailControllerAPI.markAsRead(emailId: emailId, read: read).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** |  | 
 **read** | **Bool** | What value to assign to email read property. Default true. | [optional] [default to true]

### Return type

[**EmailPreview**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToEmail**
```swift
    open class func replyToEmail( emailId: UUID,  replyToEmailOptions: ReplyToEmailOptions) -> Promise<SentEmailDto>
```

Reply to an email

Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of the email that should be replied to
let replyToEmailOptions = ReplyToEmailOptions(body: "body_example", isHTML: false, from: "from_example", replyTo: "replyTo_example", customHeaders: "TODO", charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, html: false) // ReplyToEmailOptions | 

// Reply to an email
EmailControllerAPI.replyToEmail(emailId: emailId, replyToEmailOptions: replyToEmailOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of the email that should be replied to | 
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchEmails**
```swift
    open class func searchEmails( searchEmailsOptions: SearchEmailsOptions,  syncConnectors: Bool? = nil,  favourited: Bool? = nil,  plusAddressId: UUID? = nil) -> Promise<PageEmailProjection>
```

Get all emails by search criteria. Return in paginated form.

Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let searchEmailsOptions = SearchEmailsOptions(inboxIds: [123], pageIndex: 123, pageSize: 123, sortDirection: "sortDirection_example", unreadOnly: false, searchFilter: "searchFilter_example", since: Date(), before: Date()) // SearchEmailsOptions | 
let syncConnectors = true // Bool | Sync connectors (optional)
let favourited = true // Bool | Search only favourited emails (optional)
let plusAddressId = 987 // UUID | Optional plus address ID filter (optional)

// Get all emails by search criteria. Return in paginated form.
EmailControllerAPI.searchEmails(searchEmailsOptions: searchEmailsOptions, syncConnectors: syncConnectors, favourited: favourited, plusAddressId: plusAddressId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchEmailsOptions** | [**SearchEmailsOptions**](SearchEmailsOptions) |  | 
 **syncConnectors** | **Bool** | Sync connectors | [optional] 
 **favourited** | **Bool** | Search only favourited emails | [optional] 
 **plusAddressId** | **UUID** | Optional plus address ID filter | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSourceOptional**
```swift
    open class func sendEmailSourceOptional( sendEmailOptions: SendEmailOptions,  inboxId: UUID? = nil,  useDomainPool: Bool? = nil,  virtualSend: Bool? = nil) -> Promise<Void>
```

Send email

Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", fromName: "fromName_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 
let inboxId = 987 // UUID | ID of the inbox you want to send the email from (optional)
let useDomainPool = true // Bool | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. (optional)
let virtualSend = true // Bool | Optionally create inbox to send from that is a virtual inbox and won't send to external addresses (optional)

// Send email
EmailControllerAPI.sendEmailSourceOptional(sendEmailOptions: sendEmailOptions, inboxId: inboxId, useDomainPool: useDomainPool, virtualSend: virtualSend).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 
 **inboxId** | **UUID** | ID of the inbox you want to send the email from | [optional] 
 **useDomainPool** | **Bool** | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **virtualSend** | **Bool** | Optionally create inbox to send from that is a virtual inbox and won&#39;t send to external addresses | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setEmailFavourited**
```swift
    open class func setEmailFavourited( emailId: UUID,  favourited: Bool) -> Promise<Void>
```

Set email favourited state

Sets favourite state for an email for dashboard/search workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to set favourite state
let favourited = true // Bool | 

// Set email favourited state
EmailControllerAPI.setEmailFavourited(emailId: emailId, favourited: favourited).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email to set favourite state | 
 **favourited** | **Bool** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmail**
```swift
    open class func validateEmail( emailId: UUID) -> Promise<ValidationDto>
```

Validate email HTML contents

Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Validate email HTML contents
EmailControllerAPI.validateEmail(emailId: emailId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | **UUID** | ID of email | 

### Return type

[**ValidationDto**](ValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

