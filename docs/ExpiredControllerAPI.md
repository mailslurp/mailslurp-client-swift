# ExpiredControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExpirationDefaults**](ExpiredControllerAPI#getexpirationdefaults) | **GET** /expired/defaults | Get default expiration settings
[**getExpiredInboxByInboxId**](ExpiredControllerAPI#getexpiredinboxbyinboxid) | **GET** /expired/inbox/{inboxId} | Get expired inbox record for a previously existing inbox
[**getExpiredInboxRecord**](ExpiredControllerAPI#getexpiredinboxrecord) | **GET** /expired/{expiredId} | Get an expired inbox record
[**getExpiredInboxes**](ExpiredControllerAPI#getexpiredinboxes) | **GET** /expired | List records of expired inboxes


# **getExpirationDefaults**
```swift
    open class func getExpirationDefaults() -> Promise<ExpirationDefaults>
```

Get default expiration settings

Return default times used for inbox expiration

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get default expiration settings
ExpiredControllerAPI.getExpirationDefaults().then {
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

[**ExpirationDefaults**](ExpirationDefaults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxByInboxId**
```swift
    open class func getExpiredInboxByInboxId( inboxId: UUID) -> Promise<ExpiredInboxDto>
```

Get expired inbox record for a previously existing inbox

Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of inbox you want to retrieve (not the inbox ID)

// Get expired inbox record for a previously existing inbox
ExpiredControllerAPI.getExpiredInboxByInboxId(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() | ID of inbox you want to retrieve (not the inbox ID) | 

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxRecord**
```swift
    open class func getExpiredInboxRecord( expiredId: UUID) -> Promise<ExpiredInboxDto>
```

Get an expired inbox record

Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let expiredId = 987 // UUID | ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)

// Get an expired inbox record
ExpiredControllerAPI.getExpiredInboxRecord(expiredId: expiredId).then {
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
 **expiredId** | [**UUID**]() | ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) | 

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExpiredInboxes**
```swift
    open class func getExpiredInboxes( page: Int? = nil,  size: Int? = nil,  sort: Sort_getExpiredInboxes? = nil) -> Promise<PageExpiredInboxRecordProjection>
```

List records of expired inboxes

Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in inbox sent email list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox sent email list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// List records of expired inboxes
ExpiredControllerAPI.getExpiredInboxes(page: page, size: size, sort: sort).then {
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
 **page** | **Int** | Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageExpiredInboxRecordProjection**](PageExpiredInboxRecordProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

