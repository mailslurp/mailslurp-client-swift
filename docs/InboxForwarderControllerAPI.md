# InboxForwarderControllerAPI

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxForwarder**](InboxForwarderControllerAPI#createnewinboxforwarder) | **POST** /forwarders | Create an inbox forwarder
[**deleteInboxForwarder**](InboxForwarderControllerAPI#deleteinboxforwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**deleteInboxForwarders**](InboxForwarderControllerAPI#deleteinboxforwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**getInboxForwarder**](InboxForwarderControllerAPI#getinboxforwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**getInboxForwarders**](InboxForwarderControllerAPI#getinboxforwarders) | **GET** /forwarders | List inbox forwarders
[**testInboxForwarder**](InboxForwarderControllerAPI#testinboxforwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**testInboxForwardersForInbox**](InboxForwarderControllerAPI#testinboxforwardersforinbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**testNewInboxForwarder**](InboxForwarderControllerAPI#testnewinboxforwarder) | **PATCH** /forwarders | Test new inbox forwarder


# **createNewInboxForwarder**
```swift
    open class func createNewInboxForwarder( inboxId: UUID,  createInboxForwarderOptions: CreateInboxForwarderOptions) -> Promise<InboxForwarderDto>
```

Create an inbox forwarder

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox id to attach forwarder to
let createInboxForwarderOptions = CreateInboxForwarderOptions(field: "field_example", match: "match_example", forwardToRecipients: ["forwardToRecipients_example"]) // CreateInboxForwarderOptions | 

// Create an inbox forwarder
InboxForwarderControllerAPI.createNewInboxForwarder(inboxId: inboxId, createInboxForwarderOptions: createInboxForwarderOptions).then {
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
 **inboxId** | [**UUID**]() | Inbox id to attach forwarder to | 
 **createInboxForwarderOptions** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions) |  | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxForwarder**
```swift
    open class func deleteInboxForwarder( _id: UUID) -> Promise<Void>
```

Delete an inbox forwarder

Delete inbox forwarder

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox forwarder

// Delete an inbox forwarder
InboxForwarderControllerAPI.deleteInboxForwarder(_id: _id).then {
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
 **_id** | [**UUID**]() | ID of inbox forwarder | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxForwarders**
```swift
    open class func deleteInboxForwarders( inboxId: UUID? = nil) -> Promise<Void>
```

Delete inbox forwarders

Delete inbox forwarders. Accepts optional inboxId filter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to attach forwarder to (optional)

// Delete inbox forwarders
InboxForwarderControllerAPI.deleteInboxForwarders(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() | Optional inbox id to attach forwarder to | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarder**
```swift
    open class func getInboxForwarder( _id: UUID) -> Promise<InboxForwarderDto>
```

Get an inbox forwarder

Get inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox forwarder

// Get an inbox forwarder
InboxForwarderControllerAPI.getInboxForwarder(_id: _id).then {
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
 **_id** | [**UUID**]() | ID of inbox forwarder | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxForwarders**
```swift
    open class func getInboxForwarders( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxForwarders? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageInboxForwarderDto>
```

List inbox forwarders

List all forwarders attached to an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to get forwarders from (optional)
let page = 987 // Int | Optional page index in inbox forwarder list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox forwarder list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// List inbox forwarders
InboxForwarderControllerAPI.getInboxForwarders(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
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
 **inboxId** | [**UUID**]() | Optional inbox id to get forwarders from | [optional] 
 **page** | **Int** | Optional page index in inbox forwarder list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox forwarder list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxForwarderDto**](PageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxForwarder**
```swift
    open class func testInboxForwarder( _id: UUID,  inboxForwarderTestOptions: InboxForwarderTestOptions) -> Promise<InboxForwarderTestResult>
```

Test an inbox forwarder

Test an inbox forwarder

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox forwarder
let inboxForwarderTestOptions = InboxForwarderTestOptions(testValue: "testValue_example") // InboxForwarderTestOptions | 

// Test an inbox forwarder
InboxForwarderControllerAPI.testInboxForwarder(_id: _id, inboxForwarderTestOptions: inboxForwarderTestOptions).then {
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
 **_id** | [**UUID**]() | ID of inbox forwarder | 
 **inboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions) |  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxForwardersForInbox**
```swift
    open class func testInboxForwardersForInbox( inboxId: UUID,  inboxForwarderTestOptions: InboxForwarderTestOptions) -> Promise<InboxForwarderTestResult>
```

Test inbox forwarders for inbox

Test inbox forwarders for inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of inbox
let inboxForwarderTestOptions = InboxForwarderTestOptions(testValue: "testValue_example") // InboxForwarderTestOptions | 

// Test inbox forwarders for inbox
InboxForwarderControllerAPI.testInboxForwardersForInbox(inboxId: inboxId, inboxForwarderTestOptions: inboxForwarderTestOptions).then {
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
 **inboxId** | [**UUID**]() | ID of inbox | 
 **inboxForwarderTestOptions** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions) |  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewInboxForwarder**
```swift
    open class func testNewInboxForwarder( testNewInboxForwarderOptions: TestNewInboxForwarderOptions) -> Promise<InboxForwarderTestResult>
```

Test new inbox forwarder

Test new inbox forwarder

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testNewInboxForwarderOptions = TestNewInboxForwarderOptions(inboxForwarderTestOptions: InboxForwarderTestOptions(testValue: "testValue_example"), createInboxForwarderOptions: CreateInboxForwarderOptions(field: "field_example", match: "match_example", forwardToRecipients: ["forwardToRecipients_example"])) // TestNewInboxForwarderOptions | 

// Test new inbox forwarder
InboxForwarderControllerAPI.testNewInboxForwarder(testNewInboxForwarderOptions: testNewInboxForwarderOptions).then {
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
 **testNewInboxForwarderOptions** | [**TestNewInboxForwarderOptions**](TestNewInboxForwarderOptions) |  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

