# EmailControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllEmails**](EmailControllerAPI.md#deleteallemails) | **DELETE** /emails | Delete all emails
[**deleteEmail**](EmailControllerAPI.md#deleteemail) | **DELETE** /emails/{emailId} | Delete an email
[**downloadAttachment**](EmailControllerAPI.md#downloadattachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**downloadAttachmentBase64**](EmailControllerAPI.md#downloadattachmentbase64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string (alternative to binary responses)
[**forwardEmail**](EmailControllerAPI.md#forwardemail) | **POST** /emails/{emailId}/forward | Forward email
[**getAttachmentMetaData**](EmailControllerAPI.md#getattachmentmetadata) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
[**getAttachments**](EmailControllerAPI.md#getattachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
[**getEmail**](EmailControllerAPI.md#getemail) | **GET** /emails/{emailId} | Get email content
[**getEmailContentMatch**](EmailControllerAPI.md#getemailcontentmatch) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**getEmailHTML**](EmailControllerAPI.md#getemailhtml) | **GET** /emails/{emailId}/html | Get email content as HTML
[**getEmailHTMLQuery**](EmailControllerAPI.md#getemailhtmlquery) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailTextLines**](EmailControllerAPI.md#getemailtextlines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**getEmailsPaginated**](EmailControllerAPI.md#getemailspaginated) | **GET** /emails | Get all emails
[**getRawEmailContents**](EmailControllerAPI.md#getrawemailcontents) | **GET** /emails/{emailId}/raw | Get raw email string
[**getRawEmailJson**](EmailControllerAPI.md#getrawemailjson) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON
[**getUnreadEmailCount**](EmailControllerAPI.md#getunreademailcount) | **GET** /emails/unreadCount | Get unread email count
[**replyToEmail**](EmailControllerAPI.md#replytoemail) | **PUT** /emails/{emailId} | Reply to an email
[**validateEmail**](EmailControllerAPI.md#validateemail) | **POST** /emails/{emailId}/validate | Validate email


# **deleteAllEmails**
```swift
    open class func deleteAllEmails(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all emails

Deletes all emails in your account. Be careful as emails cannot be recovered

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all emails
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

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**UUID**](.md) | ID of email to delete | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadAttachment**
```swift
    open class func downloadAttachment(attachmentId: String, emailId: UUID, apiKey: String? = nil, completion: @escaping (_ data: Data?, _ error: Error?) -> Void)
```

Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment
let emailId = 987 // UUID | ID of email
let apiKey = "apiKey_example" // String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. (optional)

// Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
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
 **emailId** | [**UUID**](.md) | ID of email | 
 **apiKey** | **String** | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**Data**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadAttachmentBase64**
```swift
    open class func downloadAttachmentBase64(attachmentId: String, emailId: UUID, completion: @escaping (_ data: DownloadAttachmentDto?, _ error: Error?) -> Void)
```

Get email attachment as base64 encoded string (alternative to binary responses)

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment
let emailId = 987 // UUID | ID of email

// Get email attachment as base64 encoded string (alternative to binary responses)
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
 **emailId** | [**UUID**](.md) | ID of email | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forwardEmail**
```swift
    open class func forwardEmail(emailId: UUID, forwardEmailOptions: ForwardEmailOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Forward email

Forward an existing email to new recipients.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email
let forwardEmailOptions = ForwardEmailOptions(bcc: ["bcc_example"], cc: ["cc_example"], subject: "subject_example", to: ["to_example"]) // ForwardEmailOptions | forwardEmailOptions

// Forward email
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
 **emailId** | [**UUID**](.md) | ID of email | 
 **forwardEmailOptions** | [**ForwardEmailOptions**](ForwardEmailOptions.md) | forwardEmailOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachmentMetaData**
```swift
    open class func getAttachmentMetaData(attachmentId: String, emailId: UUID, completion: @escaping (_ data: AttachmentMetaData?, _ error: Error?) -> Void)
```

Get email attachment metadata

Returns the metadata such as name and content-type for a given attachment and email.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment
let emailId = 987 // UUID | ID of email

// Get email attachment metadata
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
 **emailId** | [**UUID**](.md) | ID of email | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachments**
```swift
    open class func getAttachments(emailId: UUID, completion: @escaping (_ data: [AttachmentMetaData]?, _ error: Error?) -> Void)
```

Get all email attachment metadata

Returns an array of attachment metadata such as name and content-type for a given email if present.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get all email attachment metadata
EmailControllerAPI.getAttachments(emailId: emailId) { (response, error) in
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
 **emailId** | [**UUID**](.md) | ID of email | 

### Return type

[**[AttachmentMetaData]**](AttachmentMetaData.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmail**
```swift
    open class func getEmail(emailId: UUID, decode: Bool? = nil, completion: @escaping (_ data: Email?, _ error: Error?) -> Void)
```

Get email content

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | emailId
let decode = true // Bool | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing (optional) (default to false)

// Get email content
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
 **emailId** | [**UUID**](.md) | emailId | 
 **decode** | **Bool** | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to false]

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**UUID**](.md) | ID of email to match against | 
 **contentMatchOptions** | [**ContentMatchOptions**](ContentMatchOptions.md) | contentMatchOptions | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailHTML**
```swift
    open class func getEmailHTML(emailId: UUID, decode: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get email content as HTML

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | emailId
let decode = true // Bool | decode (optional) (default to false)

// Get email content as HTML
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
 **emailId** | [**UUID**](.md) | emailId | 
 **decode** | **Bool** | decode | [optional] [default to false]

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**UUID**](.md) | ID of email to perform HTML query on | 
 **htmlSelector** | **String** | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
 **emailId** | [**UUID**](.md) | ID of email to fetch text for | 
 **decodeHtmlEntities** | **Bool** | Decode HTML entities | [optional] 
 **lineSeparator** | **String** | Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailsPaginated**
```swift
    open class func getEmailsPaginated(inboxId: [UUID]? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getEmailsPaginated? = nil, unreadOnly: Bool? = nil, completion: @escaping (_ data: PageEmailProjection?, _ error: Error?) -> Void)
```

Get all emails

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

// Get all emails
EmailControllerAPI.getEmailsPaginated(inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly) { (response, error) in
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
 **inboxId** | [**[UUID]**](UUID.md) | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Int** | Optional page index in email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawEmailContents**
```swift
    open class func getRawEmailContents(emailId: UUID, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get raw email string

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw email string
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
 **emailId** | [**UUID**](.md) | ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawEmailJson**
```swift
    open class func getRawEmailJson(emailId: UUID, completion: @escaping (_ data: RawEmailJson?, _ error: Error?) -> Void)
```

Get raw email in JSON

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Get raw email in JSON
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
 **emailId** | [**UUID**](.md) | ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnreadEmailCount**
```swift
    open class func getUnreadEmailCount(completion: @escaping (_ data: UnreadCount?, _ error: Error?) -> Void)
```

Get unread email count

Get number of emails unread

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

[**UnreadCount**](UnreadCount.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
let replyToEmailOptions = ReplyToEmailOptions(attachments: ["attachments_example"], body: "body_example", charset: "charset_example", from: "from_example", isHTML: false, replyTo: "replyTo_example", sendStrategy: "sendStrategy_example", template: 123, templateVariables: 123) // ReplyToEmailOptions | replyToEmailOptions

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
 **emailId** | [**UUID**](.md) | ID of the email that should be replied to | 
 **replyToEmailOptions** | [**ReplyToEmailOptions**](ReplyToEmailOptions.md) | replyToEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateEmail**
```swift
    open class func validateEmail(emailId: UUID, completion: @escaping (_ data: ValidationDto?, _ error: Error?) -> Void)
```

Validate email

Validate the HTML content of email if HTML is found. Considered valid if no HTML.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | ID of email

// Validate email
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
 **emailId** | [**UUID**](.md) | ID of email | 

### Return type

[**ValidationDto**](ValidationDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

