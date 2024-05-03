# EmailControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyImapFlagOperation**](EmailControllerAPI#applyimapflagoperation) | **POST** /emails/{emailId}/imap-flag-operation | Set IMAP flags associated with a message. Only supports &#39;\\Seen&#39; flag.
[**canSend**](EmailControllerAPI#cansend) | **POST** /emails/can-send | Check if email can be sent and options are valid.
[**checkEmailBody**](EmailControllerAPI#checkemailbody) | **POST** /emails/{emailId}/check-email-body | Detect broken links, spelling, and images in email content
[**checkEmailBodyFeatureSupport**](EmailControllerAPI#checkemailbodyfeaturesupport) | **POST** /emails/{emailId}/check-email-body-feature-support | Show which mail clients support the HTML and CSS features used in an email body.
[**checkEmailClientSupport**](EmailControllerAPI#checkemailclientsupport) | **POST** /emails/check-email-client-support | Show which email programs and devices support the features used in an email body.
[**deleteAllEmails**](EmailControllerAPI#deleteallemails) | **DELETE** /emails | Delete all emails in all inboxes.
[**deleteEmail**](EmailControllerAPI#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](EmailControllerAPI#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**downloadAttachmentBase64**](EmailControllerAPI#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**downloadBody**](EmailControllerAPI#downloadbody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**downloadBodyBytes**](EmailControllerAPI#downloadbodybytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forwardEmail**](EmailControllerAPI#forwardemail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**getAttachmentMetaData**](EmailControllerAPI#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**getEmail**](EmailControllerAPI#getemail) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**getEmailAttachments**](EmailControllerAPI#getemailattachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**getEmailContentMatch**](EmailControllerAPI#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailContentPart**](EmailControllerAPI#getemailcontentpart) | **GET** /emails/{emailId}/contentPart | Get email content part by content type
[**getEmailCount**](EmailControllerAPI#getemailcount) | **GET** /emails/emails/count | Get email count
[**getEmailHTML**](EmailControllerAPI#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**getEmailHTMLJson**](EmailControllerAPI#getemailhtmljson) | **GET** /emails/{emailId}/html/json | Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
[**getEmailHTMLQuery**](EmailControllerAPI#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailLinks**](EmailControllerAPI#getemaillinks) | **GET** /emails/{emailId}/links | Parse and return list of links found in an email (only works for HTML content)
[**getEmailPreviewURLs**](EmailControllerAPI#getemailpreviewurls) | **GET** /emails/{emailId}/urls | Get email URLs for viewing in browser or downloading
[**getEmailScreenshotAsBase64**](EmailControllerAPI#getemailscreenshotasbase64) | **POST** /emails/{emailId}/screenshot/base64 | Take a screenshot of an email in a browser and return base64 encoded string
[**getEmailScreenshotAsBinary**](EmailControllerAPI#getemailscreenshotasbinary) | **POST** /emails/{emailId}/screenshot/binary | Take a screenshot of an email in a browser
[**getEmailTextLines**](EmailControllerAPI#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailsOffsetPaginated**](EmailControllerAPI#getemailsoffsetpaginated) | **GET** /emails/offset-paginated | Get all emails in all inboxes in paginated form. Email API list all.
[**getEmailsPaginated**](EmailControllerAPI#getemailspaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**getGravatarUrlForEmailAddress**](EmailControllerAPI#getgravatarurlforemailaddress) | **GET** /emails/gravatarFor | 
[**getLatestEmail**](EmailControllerAPI#getlatestemail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**getLatestEmailInInbox1**](EmailControllerAPI#getlatestemailininbox1) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**getOrganizationEmailsPaginated**](EmailControllerAPI#getorganizationemailspaginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**getRawEmailContents**](EmailControllerAPI#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**getRawEmailJson**](EmailControllerAPI#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getUnreadEmailCount**](EmailControllerAPI#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**markAllAsRead**](EmailControllerAPI#markallasread) | **PATCH** /emails/read | Mark all emails as read or unread
[**markAsRead**](EmailControllerAPI#markasread) | **PATCH** /emails/{emailId}/read | Mark an email as read or unread
[**replyToEmail**](EmailControllerAPI#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**searchEmails**](EmailControllerAPI#searchemails) | **POST** /emails/search | Get all emails by search criteria. Return in paginated form.
[**sendEmailSourceOptional**](EmailControllerAPI#sendemailsourceoptional) | **POST** /emails | Send email
[**validateEmail**](EmailControllerAPI#validateemail) | **POST** /emails/{emailId}/validate | Validate email HTML contents


# **applyImapFlagOperation**
```swift
    open class func applyImapFlagOperation( emailId: UUID,  imapFlagOperationOptions: ImapFlagOperationOptions) -> Promise<EmailPreview>
```

Set IMAP flags associated with a message. Only supports '\\Seen' flag.

Apply RFC3501 section-2.3.2 IMAP flag operations on an email

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

Check if email can be sent and options are valid.

Can user send email to given recipient or is the recipient blocked

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to send the email from
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 

// Check if email can be sent and options are valid.
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

Detect broken links, spelling, and images in email content

Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 

// Detect broken links, spelling, and images in email content
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

Show which mail clients support the HTML and CSS features used in an email body.

Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 

// Show which mail clients support the HTML and CSS features used in an email body.
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

Show which email programs and devices support the features used in an email body.

Evaluate the features used in an email body and return a report of email client support across different platforms and versions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let checkEmailClientSupportOptions = CheckEmailClientSupportOptions(emailBody: "emailBody_example") // CheckEmailClientSupportOptions | 

// Show which email programs and devices support the features used in an email body.
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

Deletes all emails in your account. Be careful as emails cannot be recovered

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

Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

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

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

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

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

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

Returns the specified email body for a given email as a string

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

Returns the specified email body for a given email as a stream / array of bytes.

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

Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.

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

Returns the metadata such as name and content-type for a given attachment and email.

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
    open class func getEmail( emailId: UUID,  decode: Bool? = nil) -> Promise<Email>
```

Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let decode = true // Bool | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing (optional) (default to false)

// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
EmailControllerAPI.getEmail(emailId: emailId, decode: decode).then {
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
 **decode** | **Bool** | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailAttachments**
```swift
    open class func getEmailAttachments( emailId: UUID) -> Promise<[AttachmentMetaData]>
```

Get all email attachment metadata. Metadata includes name and size of attachments.

Returns an array of attachment metadata such as name and content-type for a given email if present.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get all email attachment metadata. Metadata includes name and size of attachments.
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

# **getEmailContentMatch**
```swift
    open class func getEmailContentMatch( emailId: UUID,  contentMatchOptions: ContentMatchOptions) -> Promise<EmailContentMatchResult>
```

Get email content regex pattern match results. Runs regex against email body and returns match groups.

Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to match against
let contentMatchOptions = ContentMatchOptions(pattern: "pattern_example") // ContentMatchOptions | 

// Get email content regex pattern match results. Runs regex against email body and returns match groups.
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
    open class func getEmailContentPart( emailId: UUID,  contentType: String) -> Promise<EmailContentPartResult>
```

Get email content part by content type

Get email body content parts from a multipart email message for a given content type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to match against
let contentType = "contentType_example" // String | Content type

// Get email content part by content type
EmailControllerAPI.getEmailContentPart(emailId: emailId, contentType: contentType).then {
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

### Return type

[**EmailContentPartResult**](EmailContentPartResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailCount**
```swift
    open class func getEmailCount() -> Promise<CountDto>
```

Get email count

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get email count
EmailControllerAPI.getEmailCount().then {
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

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
```swift
    open class func getEmailHTML( emailId: UUID,  decode: Bool? = nil,  replaceCidImages: Bool? = nil) -> Promise<String>
```

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let decode = true // Bool |  (optional) (default to false)
let replaceCidImages = true // Bool |  (optional) (default to false)

// Get email content as HTML. For displaying emails in browser context.
EmailControllerAPI.getEmailHTML(emailId: emailId, decode: decode, replaceCidImages: replaceCidImages).then {
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
 **decode** | **Bool** |  | [optional] [default to false]
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
    open class func getEmailHTMLJson( emailId: UUID,  decode: Bool? = nil,  replaceCidImages: Bool? = nil) -> Promise<EmailHtmlDto>
```

Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content

Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let decode = true // Bool |  (optional) (default to false)
let replaceCidImages = true // Bool |  (optional) (default to false)

// Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
EmailControllerAPI.getEmailHTMLJson(emailId: emailId, decode: decode, replaceCidImages: replaceCidImages).then {
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
 **decode** | **Bool** |  | [optional] [default to false]
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

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to perform HTML query on
let htmlSelector = "htmlSelector_example" // String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.

// Parse and return text from an email, stripping HTML and decoding encoded characters
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
    open class func getEmailLinks( emailId: UUID) -> Promise<EmailLinksResult>
```

Parse and return list of links found in an email (only works for HTML content)

HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to fetch text for

// Parse and return list of links found in an email (only works for HTML content)
EmailControllerAPI.getEmailLinks(emailId: emailId).then {
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

Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.

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

Capture image of email screenshot and return as base64 encoded string. Useful for embedding in HTML. Be careful as this may contain sensitive information.

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

Returns binary octet-stream of screenshot of the given email

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

# **getEmailTextLines**
```swift
    open class func getEmailTextLines( emailId: UUID,  decodeHtmlEntities: Bool? = nil,  lineSeparator: String? = nil) -> Promise<EmailTextLinesResult>
```

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to fetch text for
let decodeHtmlEntities = true // Bool | Decode HTML entities (optional)
let lineSeparator = "lineSeparator_example" // String | Line separator character (optional)

// Parse and return text from an email, stripping HTML and decoding encoded characters
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

# **getEmailsOffsetPaginated**
```swift
    open class func getEmailsOffsetPaginated( inboxId: [UUID]? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getEmailsOffsetPaginated? = nil,  unreadOnly: Bool? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailProjection>
```

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let searchFilter = "searchFilter_example" // String | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional)
let since = Date() // Date | Optional filter emails received after given date time (optional)
let before = Date() // Date | Optional filter emails received before given date time (optional)

// Get all emails in all inboxes in paginated form. Email API list all.
EmailControllerAPI.getEmailsOffsetPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before).then {
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
 **searchFilter** | **String** | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
 **since** | **Date** | Optional filter emails received after given date time | [optional] 
 **before** | **Date** | Optional filter emails received before given date time | [optional] 

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
    open class func getEmailsPaginated( inboxId: [UUID]? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getEmailsPaginated? = nil,  unreadOnly: Bool? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailProjection>
```

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let searchFilter = "searchFilter_example" // String | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional)
let since = Date() // Date | Optional filter emails received after given date time. If unset will use time 24hours prior to now. (optional)
let before = Date() // Date | Optional filter emails received before given date time (optional)

// Get all emails in all inboxes in paginated form. Email API list all.
EmailControllerAPI.getEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before).then {
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
 **searchFilter** | **String** | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] 
 **since** | **Date** | Optional filter emails received after given date time. If unset will use time 24hours prior to now. | [optional] 
 **before** | **Date** | Optional filter emails received before given date time | [optional] 

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



Get gravatar url for email address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | 
let size = "size_example" // String |  (optional)

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

Get the newest email in all inboxes or in a passed set of inbox IDs

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

Get the newest email in all inboxes or in a passed set of inbox IDs

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
    open class func getOrganizationEmailsPaginated( inboxId: [UUID]? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getOrganizationEmailsPaginated? = nil,  unreadOnly: Bool? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailProjection>
```

Get all organization emails. List team or shared test email accounts

By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

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

// Get all organization emails. List team or shared test email accounts
EmailControllerAPI.getOrganizationEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before).then {
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

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

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

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

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

Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox ID filter (optional)

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
 **inboxId** | **UUID** | Optional inbox ID filter | [optional] 

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

Marks all emails as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

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

Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread

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

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

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
    open class func searchEmails( searchEmailsOptions: SearchEmailsOptions) -> Promise<PageEmailProjection>
```

Get all emails by search criteria. Return in paginated form.

Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let searchEmailsOptions = SearchEmailsOptions(inboxIds: [123], pageIndex: 123, pageSize: 123, sortDirection: "sortDirection_example", unreadOnly: false, searchFilter: "searchFilter_example", since: Date(), before: Date()) // SearchEmailsOptions | 

// Get all emails by search criteria. Return in paginated form.
EmailControllerAPI.searchEmails(searchEmailsOptions: searchEmailsOptions).then {
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

Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 
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

# **validateEmail**
```swift
    open class func validateEmail( emailId: UUID) -> Promise<ValidationDto>
```

Validate email HTML contents

Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.

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

