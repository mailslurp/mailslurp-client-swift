# UserControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEntityAutomations**](UserControllerAPI#getentityautomations) | **GET** /user/automations | 
[**getEntityEvents**](UserControllerAPI#getentityevents) | **GET** /user/events | 
[**getEntityFavorites**](UserControllerAPI#getentityfavorites) | **GET** /user/favorites | 
[**getJsonPropertyAsString**](UserControllerAPI#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](UserControllerAPI#getuserinfo) | **GET** /user/info | 


# **getEntityAutomations**
```swift
    open class func getEntityAutomations( page: Int? = nil,  size: Int? = nil,  sort: Sort_getEntityAutomations? = nil,  since: Date? = nil,  before: Date? = nil,  inboxId: UUID? = nil,  phoneId: UUID? = nil,  filter: Filter_getEntityAutomations? = nil) -> Promise<PageEntityAutomationItems>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index (optional) (default to 0)
let size = 987 // Int | Optional page size (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let inboxId = 987 // UUID | Optional inbox ID (optional)
let phoneId = 987 // UUID | Optional phone ID (optional)
let filter = "filter_example" // String | Optional automation type filter (optional)

UserControllerAPI.getEntityAutomations(page: page, size: size, sort: sort, since: since, before: before, inboxId: inboxId, phoneId: phoneId, filter: filter).then {
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
 **page** | **Int** | Optional page index | [optional] [default to 0]
 **size** | **Int** | Optional page size | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **inboxId** | **UUID** | Optional inbox ID | [optional] 
 **phoneId** | **UUID** | Optional phone ID | [optional] 
 **filter** | **String** | Optional automation type filter | [optional] 

### Return type

[**PageEntityAutomationItems**](PageEntityAutomationItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEntityEvents**
```swift
    open class func getEntityEvents( page: Int? = nil,  size: Int? = nil,  sort: Sort_getEntityEvents? = nil,  since: Date? = nil,  before: Date? = nil,  inboxId: UUID? = nil,  emailId: UUID? = nil,  phoneId: UUID? = nil,  smsId: UUID? = nil,  attachmentId: UUID? = nil,  filter: Filter_getEntityEvents? = nil) -> Promise<PageEntityEventItems>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index (optional) (default to 0)
let size = 987 // Int | Optional page size (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let inboxId = 987 // UUID | Optional inbox ID (optional)
let emailId = 987 // UUID | Optional email ID (optional)
let phoneId = 987 // UUID | Optional phone ID (optional)
let smsId = 987 // UUID | Optional SMS ID (optional)
let attachmentId = 987 // UUID | Optional attachment ID (optional)
let filter = "filter_example" // String | Optional type filter (optional)

UserControllerAPI.getEntityEvents(page: page, size: size, sort: sort, since: since, before: before, inboxId: inboxId, emailId: emailId, phoneId: phoneId, smsId: smsId, attachmentId: attachmentId, filter: filter).then {
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
 **page** | **Int** | Optional page index | [optional] [default to 0]
 **size** | **Int** | Optional page size | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **inboxId** | **UUID** | Optional inbox ID | [optional] 
 **emailId** | **UUID** | Optional email ID | [optional] 
 **phoneId** | **UUID** | Optional phone ID | [optional] 
 **smsId** | **UUID** | Optional SMS ID | [optional] 
 **attachmentId** | **UUID** | Optional attachment ID | [optional] 
 **filter** | **String** | Optional type filter | [optional] 

### Return type

[**PageEntityEventItems**](PageEntityEventItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEntityFavorites**
```swift
    open class func getEntityFavorites( page: Int? = nil,  size: Int? = nil,  sort: Sort_getEntityFavorites? = nil,  since: Date? = nil,  before: Date? = nil,  filter: Filter_getEntityFavorites? = nil) -> Promise<PageEntityFavouriteItems>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index (optional) (default to 0)
let size = 987 // Int | Optional page size (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let filter = "filter_example" // String | Optional type filter (optional)

UserControllerAPI.getEntityFavorites(page: page, size: size, sort: sort, since: since, before: before, filter: filter).then {
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
 **page** | **Int** | Optional page index | [optional] [default to 0]
 **size** | **Int** | Optional page size | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **filter** | **String** | Optional type filter | [optional] 

### Return type

[**PageEntityFavouriteItems**](PageEntityFavouriteItems)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonPropertyAsString**
```swift
    open class func getJsonPropertyAsString( property: String,  body: AnyCodable) -> Promise<String>
```



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let property = "property_example" // String | JSON property name or dot separated path selector such as `a.b.c`
let body = "TODO" // AnyCodable | 

UserControllerAPI.getJsonPropertyAsString(property: property, body: body).then {
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
 **property** | **String** | JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **body** | **AnyCodable** |  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUserInfo**
```swift
    open class func getUserInfo() -> Promise<UserInfoDto>
```



Get account information for your user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


UserControllerAPI.getUserInfo().then {
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

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

