# InboxReplierControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxReplier**](InboxReplierControllerAPI#createnewinboxreplier) | **POST** /repliers | Create an inbox replier
[**deleteInboxReplier**](InboxReplierControllerAPI#deleteinboxreplier) | **DELETE** /repliers/{id} | Delete an inbox replier
[**deleteInboxRepliers**](InboxReplierControllerAPI#deleteinboxrepliers) | **DELETE** /repliers | Delete inbox repliers
[**getAllInboxReplierEvents**](InboxReplierControllerAPI#getallinboxreplierevents) | **GET** /repliers/events | Get inbox replier event list
[**getInboxReplier**](InboxReplierControllerAPI#getinboxreplier) | **GET** /repliers/{id} | Get an inbox replier
[**getInboxReplierEvents**](InboxReplierControllerAPI#getinboxreplierevents) | **GET** /repliers/{id}/events | Get an inbox replier event list
[**getInboxRepliers**](InboxReplierControllerAPI#getinboxrepliers) | **GET** /repliers | List inbox repliers
[**updateInboxReplier**](InboxReplierControllerAPI#updateinboxreplier) | **PUT** /repliers/{id} | Update an inbox replier


# **createNewInboxReplier**
```swift
    open class func createNewInboxReplier( createInboxReplierOptions: CreateInboxReplierOptions) -> Promise<InboxReplierDto>
```

Create an inbox replier

Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createInboxReplierOptions = CreateInboxReplierOptions(inboxId: 123, name: "name_example", field: "field_example", match: "match_example", replyTo: "replyTo_example", subject: "subject_example", from: "from_example", charset: "charset_example", ignoreReplyTo: false, isHTML: false, body: "body_example", templateId: 123, templateVariables: "TODO") // CreateInboxReplierOptions | 

// Create an inbox replier
InboxReplierControllerAPI.createNewInboxReplier(createInboxReplierOptions: createInboxReplierOptions).then {
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
 **createInboxReplierOptions** | [**CreateInboxReplierOptions**](CreateInboxReplierOptions) |  | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxReplier**
```swift
    open class func deleteInboxReplier( _id: UUID) -> Promise<Void>
```

Delete an inbox replier

Delete inbox replier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox replier

// Delete an inbox replier
InboxReplierControllerAPI.deleteInboxReplier(_id: _id).then {
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
 **_id** | **UUID** | ID of inbox replier | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRepliers**
```swift
    open class func deleteInboxRepliers( inboxId: UUID? = nil) -> Promise<Void>
```

Delete inbox repliers

Delete inbox repliers. Accepts optional inboxId filter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to attach replier to (optional)

// Delete inbox repliers
InboxReplierControllerAPI.deleteInboxRepliers(inboxId: inboxId).then {
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
 **inboxId** | **UUID** | Optional inbox id to attach replier to | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxReplierEvents**
```swift
    open class func getAllInboxReplierEvents( inboxReplierId: UUID? = nil,  inboxId: UUID? = nil,  emailId: UUID? = nil,  sentId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllInboxReplierEvents? = nil) -> Promise<PageInboxReplierEvents>
```

Get inbox replier event list

Get all inbox ruleset events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxReplierId = 987 // UUID | ID of inbox replier (optional)
let inboxId = 987 // UUID | ID of inbox (optional)
let emailId = 987 // UUID | ID of email (optional)
let sentId = 987 // UUID | ID of sent (optional)
let page = 987 // Int | Optional page index in inbox replier event list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox replier event list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get inbox replier event list
InboxReplierControllerAPI.getAllInboxReplierEvents(inboxReplierId: inboxReplierId, inboxId: inboxId, emailId: emailId, sentId: sentId, page: page, size: size, sort: sort).then {
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
 **inboxReplierId** | **UUID** | ID of inbox replier | [optional] 
 **inboxId** | **UUID** | ID of inbox | [optional] 
 **emailId** | **UUID** | ID of email | [optional] 
 **sentId** | **UUID** | ID of sent | [optional] 
 **page** | **Int** | Optional page index in inbox replier event list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox replier event list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageInboxReplierEvents**](PageInboxReplierEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxReplier**
```swift
    open class func getInboxReplier( _id: UUID) -> Promise<InboxReplierDto>
```

Get an inbox replier

Get inbox ruleset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox replier

// Get an inbox replier
InboxReplierControllerAPI.getInboxReplier(_id: _id).then {
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
 **_id** | **UUID** | ID of inbox replier | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxReplierEvents**
```swift
    open class func getInboxReplierEvents( _id: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxReplierEvents? = nil) -> Promise<PageInboxReplierEvents>
```

Get an inbox replier event list

Get inbox ruleset events

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox replier
let page = 987 // Int | Optional page index in inbox replier event list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox replier event list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get an inbox replier event list
InboxReplierControllerAPI.getInboxReplierEvents(_id: _id, page: page, size: size, sort: sort).then {
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
 **_id** | **UUID** | ID of inbox replier | 
 **page** | **Int** | Optional page index in inbox replier event list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox replier event list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageInboxReplierEvents**](PageInboxReplierEvents)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRepliers**
```swift
    open class func getInboxRepliers( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxRepliers? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageInboxReplierDto>
```

List inbox repliers

List all repliers attached to an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to get repliers from (optional)
let page = 987 // Int | Optional page index in inbox replier list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox replier list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// List inbox repliers
InboxReplierControllerAPI.getInboxRepliers(inboxId: inboxId, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **inboxId** | **UUID** | Optional inbox id to get repliers from | [optional] 
 **page** | **Int** | Optional page index in inbox replier list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox replier list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxReplierDto**](PageInboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInboxReplier**
```swift
    open class func updateInboxReplier( _id: UUID,  updateInboxReplierOptions: UpdateInboxReplierOptions) -> Promise<InboxReplierDto>
```

Update an inbox replier

Update inbox ruleset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox replier
let updateInboxReplierOptions = UpdateInboxReplierOptions(inboxId: 123, name: "name_example", field: "field_example", match: "match_example", replyTo: "replyTo_example", subject: "subject_example", from: "from_example", charset: "charset_example", isHTML: false, ignoreReplyTo: false, body: "body_example", templateId: 123, templateVariables: "TODO") // UpdateInboxReplierOptions | 

// Update an inbox replier
InboxReplierControllerAPI.updateInboxReplier(_id: _id, updateInboxReplierOptions: updateInboxReplierOptions).then {
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
 **_id** | **UUID** | ID of inbox replier | 
 **updateInboxReplierOptions** | [**UpdateInboxReplierOptions**](UpdateInboxReplierOptions) |  | 

### Return type

[**InboxReplierDto**](InboxReplierDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

