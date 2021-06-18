# EmailControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllEmails**](EmailControllerAPI#deleteallemails) | **DELETE** /emails | Delete all emails in all inboxes.
[**deleteEmail**](EmailControllerAPI#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](EmailControllerAPI#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**downloadAttachmentBase64**](EmailControllerAPI#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**downloadBody**](EmailControllerAPI#downloadbody) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**downloadBodyBytes**](EmailControllerAPI#downloadbodybytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forwardEmail**](EmailControllerAPI#forwardemail) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**getAttachmentMetaData**](EmailControllerAPI#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**getAttachments1**](EmailControllerAPI#getattachments1) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**getEmail**](EmailControllerAPI#getemail) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**getEmailContentMatch**](EmailControllerAPI#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailHTML**](EmailControllerAPI#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**getEmailHTMLQuery**](EmailControllerAPI#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailTextLines**](EmailControllerAPI#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailsPaginated**](EmailControllerAPI#getemailspaginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**getLatestEmail**](EmailControllerAPI#getlatestemail) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**getLatestEmailInInbox**](EmailControllerAPI#getlatestemailininbox) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**getOrganizationEmailsPaginated**](EmailControllerAPI#getorganizationemailspaginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**getRawEmailContents**](EmailControllerAPI#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**getRawEmailJson**](EmailControllerAPI#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**getUnreadEmailCount**](EmailControllerAPI#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**replyToEmail**](EmailControllerAPI#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**validateEmail**](EmailControllerAPI#validateemail) | **POST** /emails/{emailId}/validate | Validate email HTML contents


# **deleteAllEmails**
```swift
    open class func deleteAllEmails(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all emails in all inboxes.

Deletes all emails in your account. Be careful as emails cannot be recovered

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all emails in all inboxes.
EmailControllerAPI.deleteAllEmails() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
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
    open class func deleteEmail(emailId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an email

Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to delete

// Delete an email
EmailControllerAPI.deleteEmail(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email to delete | 

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
    open class func downloadAttachment(attachmentId: String, emailId: UUID, apiKey: String? = nil, completion: @escaping (_ data: Data?, _ error: Error?) -> Void)
```

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment
let emailId = 987 // UUID | ID of email
let apiKey = "apiKey_example" // String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)

// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
EmailControllerAPI.downloadAttachment(attachmentId: attachmentId, emailId: emailId, apiKey: apiKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String** | ID of attachment | 
 **emailId** | [**UUID**]() | ID of email | 
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
    open class func downloadAttachmentBase64(attachmentId: String, emailId: UUID, completion: @escaping (_ data: DownloadAttachmentDto?, _ error: Error?) -> Void)
```

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment
let emailId = 987 // UUID | ID of email

// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
EmailControllerAPI.downloadAttachmentBase64(attachmentId: attachmentId, emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String** | ID of attachment | 
 **emailId** | [**UUID**]() | ID of email | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBody**
```swift
    open class func downloadBody(emailId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get email body as string. Returned as `plain/text` with content type header.

Returns the specified email body for a given email as a string

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get email body as string. Returned as `plain/text` with content type header.
EmailControllerAPI.downloadBody(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html, text/plain

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadBodyBytes**
```swift
    open class func downloadBodyBytes(emailId: UUID, completion: @escaping (_ data: Data?, _ error: Error?) -> Void)
```

Get email body in bytes. Returned as `octet-stream` with content type header.

Returns the specified email body for a given email as a stream / array of bytes.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get email body in bytes. Returned as `octet-stream` with content type header.
EmailControllerAPI.downloadBodyBytes(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 

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
    open class func forwardEmail(emailId: UUID, forwardEmailOptions: ForwardEmailOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Forward email to recipients

Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email
let forwardEmailOptions = ForwardEmailOptions(bcc: ["bcc_example"], cc: ["cc_example"], from: "from_example", subject: "subject_example", to: ["to_example"], useInboxName: false) // ForwardEmailOptions | forwardEmailOptions

// Forward email to recipients
EmailControllerAPI.forwardEmail(emailId: emailId, forwardEmailOptions: forwardEmailOptions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 
 **forwardEmailOptions** | [**ForwardEmailOptions**](ForwardEmailOptions) | forwardEmailOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentMetaData**
```swift
    open class func getAttachmentMetaData(attachmentId: String, emailId: UUID, completion: @escaping (_ data: AttachmentMetaData?, _ error: Error?) -> Void)
```

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

Returns the metadata such as name and content-type for a given attachment and email.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment
let emailId = 987 // UUID | ID of email

// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
EmailControllerAPI.getAttachmentMetaData(attachmentId: attachmentId, emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String** | ID of attachment | 
 **emailId** | [**UUID**]() | ID of email | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachments1**
```swift
    open class func getAttachments1(emailId: UUID, completion: @escaping (_ data: [AttachmentMetaData]?, _ error: Error?) -> Void)
```

Get all email attachment metadata. Metadata includes name and size of attachments.

Returns an array of attachment metadata such as name and content-type for a given email if present.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get all email attachment metadata. Metadata includes name and size of attachments.
EmailControllerAPI.getAttachments1(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 

### Return type

[**[AttachmentMetaData]**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmail**
```swift
    open class func getEmail(emailId: UUID, decode: Bool? = nil, completion: @escaping (_ data: Email?, _ error: Error?) -> Void)
```

Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | emailId
let decode = true // Bool | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing (optional) (default to false)

// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
EmailControllerAPI.getEmail(emailId: emailId, decode: decode) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | emailId | 
 **decode** | **Bool** | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailContentMatch**
```swift
    open class func getEmailContentMatch(emailId: UUID, contentMatchOptions: ContentMatchOptions, completion: @escaping (_ data: EmailContentMatchResult?, _ error: Error?) -> Void)
```

Get email content regex pattern match results. Runs regex against email body and returns match groups.

Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to match against
let contentMatchOptions = ContentMatchOptions(pattern: "pattern_example") // ContentMatchOptions | contentMatchOptions

// Get email content regex pattern match results. Runs regex against email body and returns match groups.
EmailControllerAPI.getEmailContentMatch(emailId: emailId, contentMatchOptions: contentMatchOptions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email to match against | 
 **contentMatchOptions** | [**ContentMatchOptions**](ContentMatchOptions) | contentMatchOptions | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTML**
```swift
    open class func getEmailHTML(emailId: UUID, decode: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | emailId
let decode = true // Bool | decode (optional) (default to false)

// Get email content as HTML. For displaying emails in browser context.
EmailControllerAPI.getEmailHTML(emailId: emailId, decode: decode) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | emailId | 
 **decode** | **Bool** | decode | [optional] [default to false]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailHTMLQuery**
```swift
    open class func getEmailHTMLQuery(emailId: UUID, htmlSelector: String? = nil, completion: @escaping (_ data: EmailTextLinesResult?, _ error: Error?) -> Void)
```

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email to perform HTML query on
let htmlSelector = "htmlSelector_example" // String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. (optional)

// Parse and return text from an email, stripping HTML and decoding encoded characters
EmailControllerAPI.getEmailHTMLQuery(emailId: emailId, htmlSelector: htmlSelector) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email to perform HTML query on | 
 **htmlSelector** | **String** | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailTextLines**
```swift
    open class func getEmailTextLines(emailId: UUID, decodeHtmlEntities: Bool? = nil, lineSeparator: String? = nil, completion: @escaping (_ data: EmailTextLinesResult?, _ error: Error?) -> Void)
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
EmailControllerAPI.getEmailTextLines(emailId: emailId, decodeHtmlEntities: decodeHtmlEntities, lineSeparator: lineSeparator) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email to fetch text for | 
 **decodeHtmlEntities** | **Bool** | Decode HTML entities | [optional] 
 **lineSeparator** | **String** | Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmailsPaginated**
```swift
    open class func getEmailsPaginated(inboxId: [UUID]? = nil, page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getEmailsPaginated? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: PageEmailProjection?, _ error: Error?) -> Void)
```

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body (optional) (default to "false")
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)

// Get all emails in all inboxes in paginated form. Email API list all.
EmailControllerAPI.getEmailsPaginated(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort, unreadOnly: unreadOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**[UUID]**](UUID) | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Int** | Optional page index in email list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] [default to &quot;false&quot;]
 **size** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmail**
```swift
    open class func getLatestEmail(inboxIds: [UUID]? = nil, completion: @escaping (_ data: Email?, _ error: Error?) -> Void)
```

Get latest email in all inboxes. Most recently received.

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxIds = [123] // [UUID] | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs (optional)

// Get latest email in all inboxes. Most recently received.
EmailControllerAPI.getLatestEmail(inboxIds: inboxIds) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxIds** | [**[UUID]**](UUID) | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestEmailInInbox**
```swift
    open class func getLatestEmailInInbox(inboxId: UUID? = nil, completion: @escaping (_ data: Email?, _ error: Error?) -> Void)
```

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in all inboxes or in a passed set of inbox IDs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of the inbox you want to get the latest email from (optional)

// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
EmailControllerAPI.getLatestEmailInInbox(inboxId: inboxId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**UUID**]() | ID of the inbox you want to get the latest email from | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationEmailsPaginated**
```swift
    open class func getOrganizationEmailsPaginated(inboxId: [UUID]? = nil, page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getOrganizationEmailsPaginated? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: PageEmailProjection?, _ error: Error?) -> Void)
```

Get all organization emails. List team or shared test email accounts

By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = [123] // [UUID] | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. (optional)
let page = 987 // Int | Optional page index in email list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter search filter for emails. (optional)
let size = 987 // Int | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)

// Get all organization emails. List team or shared test email accounts
EmailControllerAPI.getOrganizationEmailsPaginated(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort, unreadOnly: unreadOnly) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**[UUID]**](UUID) | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Int** | Optional page index in email list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter search filter for emails. | [optional] 
 **size** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailContents**
```swift
    open class func getRawEmailContents(emailId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw email string. Returns unparsed raw SMTP message with headers and body.
EmailControllerAPI.getRawEmailContents(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRawEmailJson**
```swift
    open class func getRawEmailJson(emailId: UUID, completion: @escaping (_ data: RawEmailJson?, _ error: Error?) -> Void)
```

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
EmailControllerAPI.getRawEmailJson(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadEmailCount**
```swift
    open class func getUnreadEmailCount(completion: @escaping (_ data: UnreadCount?, _ error: Error?) -> Void)
```

Get unread email count

Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get unread email count
EmailControllerAPI.getUnreadEmailCount() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToEmail**
```swift
    open class func replyToEmail(emailId: UUID, replyToEmailOptions: ReplyToEmailOptions, completion: @escaping (_ data: SentEmailDto?, _ error: Error?) -> Void)
```

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of the email that should be replied to
let replyToEmailOptions = ReplyToEmailOptions(attachments: ["attachments_example"], body: "body_example", charset: "charset_example", from: "from_example", isHTML: false, replyTo: "replyTo_example", sendStrategy: "sendStrategy_example", template: 123, templateVariables: 123, useInboxName: false) // ReplyToEmailOptions | replyToEmailOptions

// Reply to an email
EmailControllerAPI.replyToEmail(emailId: emailId, replyToEmailOptions: replyToEmailOptions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of the email that should be replied to | 
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions) | replyToEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmail**
```swift
    open class func validateEmail(emailId: UUID, completion: @escaping (_ data: ValidationDto?, _ error: Error?) -> Void)
```

Validate email HTML contents

Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Validate email HTML contents
EmailControllerAPI.validateEmail(emailId: emailId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailId** | [**UUID**]() | ID of email | 

### Return type

[**ValidationDto**](ValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

