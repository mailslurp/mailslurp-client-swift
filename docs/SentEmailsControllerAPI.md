# SentEmailsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSentTrackingPixels**](SentEmailsControllerAPI#getallsenttrackingpixels) | **GET** /sent/tracking-pixels | Get all sent email tracking pixels in paginated form
[**getSentEmail**](SentEmailsControllerAPI#getsentemail) | **GET** /sent/{id} | Get sent email receipt
[**getSentEmailHTMLContent**](SentEmailsControllerAPI#getsentemailhtmlcontent) | **GET** /sent/{id}/html | Get sent email HTML content
[**getSentEmailTrackingPixels**](SentEmailsControllerAPI#getsentemailtrackingpixels) | **GET** /sent/{id}/tracking-pixels | Get all tracking pixels for a sent email in paginated form
[**getSentEmails**](SentEmailsControllerAPI#getsentemails) | **GET** /sent | Get all sent emails in paginated form
[**getSentOrganizationEmails**](SentEmailsControllerAPI#getsentorganizationemails) | **GET** /sent/organization | Get all sent organization emails in paginated form


# **getAllSentTrackingPixels**
```swift
    open class func getAllSentTrackingPixels( before: Date? = nil,  page: Int? = nil,  searchFilter: String? = nil,  since: Date? = nil,  size: Int? = nil,  sort: Sort_getAllSentTrackingPixels? = nil) -> Promise<PageTrackingPixelProjection>
```

Get all sent email tracking pixels in paginated form

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter by created at before the given timestamp (optional)
let page = 987 // Int | Optional page index in sent email tracking pixel list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let size = 987 // Int | Optional page size in sent email tracking pixel list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all sent email tracking pixels in paginated form
SentEmailsControllerAPI.getAllSentTrackingPixels(before: before, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort).then {
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
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **page** | **Int** | Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **size** | **Int** | Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmail**
```swift
    open class func getSentEmail( _id: UUID) -> Promise<SentEmailDto>
```

Get sent email receipt

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id

// Get sent email receipt
SentEmailsControllerAPI.getSentEmail(_id: _id).then {
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
 **_id** | [**UUID**]() | id | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailHTMLContent**
```swift
    open class func getSentEmailHTMLContent( _id: UUID) -> Promise<String>
```

Get sent email HTML content

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id

// Get sent email HTML content
SentEmailsControllerAPI.getSentEmailHTMLContent(_id: _id).then {
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
 **_id** | [**UUID**]() | id | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmailTrackingPixels**
```swift
    open class func getSentEmailTrackingPixels( _id: UUID,  before: Date? = nil,  page: Int? = nil,  searchFilter: String? = nil,  since: Date? = nil,  size: Int? = nil,  sort: Sort_getSentEmailTrackingPixels? = nil) -> Promise<PageTrackingPixelProjection>
```

Get all tracking pixels for a sent email in paginated form

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | id
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let page = 987 // Int | Optional page index in sent email tracking pixel list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let size = 987 // Int | Optional page size in sent email tracking pixel list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all tracking pixels for a sent email in paginated form
SentEmailsControllerAPI.getSentEmailTrackingPixels(_id: _id, before: before, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort).then {
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
 **_id** | [**UUID**]() | id | 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **page** | **Int** | Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **size** | **Int** | Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentEmails**
```swift
    open class func getSentEmails( before: Date? = nil,  inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  since: Date? = nil,  size: Int? = nil,  sort: Sort_getSentEmails? = nil) -> Promise<PageSentEmailProjection>
```

Get all sent emails in paginated form

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter by created at before the given timestamp (optional)
let inboxId = 987 // UUID | Optional inboxId to filter sender of sent emails by (optional)
let page = 987 // Int | Optional page index in inbox sent email list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let size = 987 // Int | Optional page size in inbox sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all sent emails in paginated form
SentEmailsControllerAPI.getSentEmails(before: before, inboxId: inboxId, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort).then {
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
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**UUID**]() | Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Int** | Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **size** | **Int** | Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentOrganizationEmails**
```swift
    open class func getSentOrganizationEmails( before: Date? = nil,  inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  since: Date? = nil,  size: Int? = nil,  sort: Sort_getSentOrganizationEmails? = nil) -> Promise<PageSentEmailProjection>
```

Get all sent organization emails in paginated form

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter by created at before the given timestamp (optional)
let inboxId = 987 // UUID | Optional inboxId to filter sender of sent emails by (optional)
let page = 987 // Int | Optional page index in sent email list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let size = 987 // Int | Optional page size in sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all sent organization emails in paginated form
SentEmailsControllerAPI.getSentOrganizationEmails(before: before, inboxId: inboxId, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort).then {
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
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **inboxId** | [**UUID**]() | Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Int** | Optional page index in sent email list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **size** | **Int** | Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

