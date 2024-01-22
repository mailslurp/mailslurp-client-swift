# AliasControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](AliasControllerAPI#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**deleteAlias**](AliasControllerAPI#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**getAlias**](AliasControllerAPI#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliasEmails**](AliasControllerAPI#getaliasemails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**getAliasThreads**](AliasControllerAPI#getaliasthreads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**getAliases**](AliasControllerAPI#getaliases) | **GET** /aliases | Get all email aliases you have created
[**getThread**](AliasControllerAPI#getthread) | **GET** /aliases/threads/{threadId} | Get a thread
[**getThreadsPaginated**](AliasControllerAPI#getthreadspaginated) | **GET** /aliases/threads | Get all threads
[**replyToAliasEmail**](AliasControllerAPI#replytoaliasemail) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**sendAliasEmail**](AliasControllerAPI#sendaliasemail) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**updateAlias**](AliasControllerAPI#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias


# **createAlias**
```swift
    open class func createAlias( createAliasOptions: CreateAliasOptions) -> Promise<AliasDto>
```

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createAliasOptions = CreateAliasOptions(emailAddress: "emailAddress_example", inboxId: 123, name: "name_example", useThreads: false, domainId: 123, verifyEmailAddress: false) // CreateAliasOptions | 

// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
AliasControllerAPI.createAlias(createAliasOptions: createAliasOptions).then {
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
 **createAliasOptions** | [**CreateAliasOptions**](CreateAliasOptions) |  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAlias**
```swift
    open class func deleteAlias( aliasId: UUID) -> Promise<Void>
```

Delete an email alias

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | 

// Delete an email alias
AliasControllerAPI.deleteAlias(aliasId: aliasId).then {
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
 **aliasId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAlias**
```swift
    open class func getAlias( aliasId: UUID) -> Promise<AliasDto>
```

Get an email alias

Get an email alias by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | 

// Get an email alias
AliasControllerAPI.getAlias(aliasId: aliasId).then {
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
 **aliasId** | **UUID** |  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliasEmails**
```swift
    open class func getAliasEmails( aliasId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAliasEmails? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageEmailProjection>
```

Get emails for an alias

Get paginated emails for an alias by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | 
let page = 987 // Int | Optional page index alias email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size alias email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by sent after given date time (optional)
let before = Date() // Date | Optional filter by sent before given date time (optional)

// Get emails for an alias
AliasControllerAPI.getAliasEmails(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **aliasId** | **UUID** |  | 
 **page** | **Int** | Optional page index alias email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size alias email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by sent after given date time | [optional] 
 **before** | **Date** | Optional filter by sent before given date time | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliasThreads**
```swift
    open class func getAliasThreads( aliasId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAliasThreads? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageThreadProjection>
```

Get threads created for an alias

Returns threads created for an email alias in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | 
let page = 987 // Int | Optional page index in thread list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in thread list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by sent after given date time (optional)
let before = Date() // Date | Optional filter by sent before given date time (optional)

// Get threads created for an alias
AliasControllerAPI.getAliasThreads(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **aliasId** | **UUID** |  | 
 **page** | **Int** | Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by sent after given date time | [optional] 
 **before** | **Date** | Optional filter by sent before given date time | [optional] 

### Return type

[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAliases**
```swift
    open class func getAliases( search: String? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAliases? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageAlias>
```

Get all email aliases you have created

Get all email aliases in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let search = "search_example" // String | Optional search term (optional)
let page = 987 // Int | Optional page index in alias list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in alias list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all email aliases you have created
AliasControllerAPI.getAliases(search: search, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **search** | **String** | Optional search term | [optional] 
 **page** | **Int** | Optional page index in alias list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageAlias**](PageAlias)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getThread**
```swift
    open class func getThread( threadId: UUID) -> Promise<ThreadProjection>
```

Get a thread

Return a thread associated with an alias

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let threadId = 987 // UUID | 

// Get a thread
AliasControllerAPI.getThread(threadId: threadId).then {
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

[**ThreadProjection**](ThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getThreadsPaginated**
```swift
    open class func getThreadsPaginated( page: Int? = nil,  size: Int? = nil,  sort: Sort_getThreadsPaginated? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageThreadProjection>
```

Get all threads

Returns threads created for all aliases in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in thread list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in thread list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter by sent after given date time (optional)
let before = Date() // Date | Optional filter by sent before given date time (optional)

// Get all threads
AliasControllerAPI.getThreadsPaginated(page: page, size: size, sort: sort, since: since, before: before).then {
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
 **page** | **Int** | Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter by sent after given date time | [optional] 
 **before** | **Date** | Optional filter by sent before given date time | [optional] 

### Return type

[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToAliasEmail**
```swift
    open class func replyToAliasEmail( aliasId: UUID,  emailId: UUID,  replyToAliasEmailOptions: ReplyToAliasEmailOptions) -> Promise<SentEmailDto>
```

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | ID of the alias that email belongs to
let emailId = 987 // UUID | ID of the email that should be replied to
let replyToAliasEmailOptions = ReplyToAliasEmailOptions(body: "body_example", isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", customHeaders: "TODO", useInboxName: false, html: false) // ReplyToAliasEmailOptions | 

// Reply to an email
AliasControllerAPI.replyToAliasEmail(aliasId: aliasId, emailId: emailId, replyToAliasEmailOptions: replyToAliasEmailOptions).then {
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
 **aliasId** | **UUID** | ID of the alias that email belongs to | 
 **emailId** | **UUID** | ID of the email that should be replied to | 
 **replyToAliasEmailOptions** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendAliasEmail**
```swift
    open class func sendAliasEmail( aliasId: UUID,  sendEmailOptions: SendEmailOptions) -> Promise<SentEmailDto>
```

Send an email from an alias inbox

Send an email from an alias. Replies to the email will be forwarded to the alias masked email address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | 
let sendEmailOptions = SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", customHeaders: "TODO", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example", ignoreEmptyRecipients: false, isXAmpHtml: false, bodyParts: [SendEmailBodyPart(contentType: "contentType_example", contentBody: "contentBody_example")]) // SendEmailOptions | 

// Send an email from an alias inbox
AliasControllerAPI.sendAliasEmail(aliasId: aliasId, sendEmailOptions: sendEmailOptions).then {
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
 **aliasId** | **UUID** |  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateAlias**
```swift
    open class func updateAlias( aliasId: UUID,  updateAliasOptions: UpdateAliasOptions) -> Promise<AliasDto>
```

Update an email alias

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | 
let updateAliasOptions = UpdateAliasOptions(name: "name_example") // UpdateAliasOptions | 

// Update an email alias
AliasControllerAPI.updateAlias(aliasId: aliasId, updateAliasOptions: updateAliasOptions).then {
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
 **aliasId** | **UUID** |  | 
 **updateAliasOptions** | [**UpdateAliasOptions**](UpdateAliasOptions) |  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

