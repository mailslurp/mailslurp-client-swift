# ApiAuditLogControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLogByEventId**](ApiAuditLogControllerAPI#getauditlogbyeventid) | **GET** /audit-logs/{eventId} | 
[**getAuditLogs**](ApiAuditLogControllerAPI#getauditlogs) | **GET** /audit-logs | 
[**searchAuditLogs**](ApiAuditLogControllerAPI#searchauditlogs) | **POST** /audit-logs/search | 


# **getAuditLogByEventId**
```swift
    open class func getAuditLogByEventId( eventId: String,  since: Date? = nil,  before: Date? = nil) -> Promise<AuditLogEventDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let eventId = "eventId_example" // String | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)

ApiAuditLogControllerAPI.getAuditLogByEventId(eventId: eventId, since: since, before: before).then {
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
 **eventId** | **String** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 

### Return type

[**AuditLogEventDto**](AuditLogEventDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAuditLogs**
```swift
    open class func getAuditLogs( since: Date? = nil,  before: Date? = nil,  action: String? = nil,  userId: UUID? = nil,  actorUserId: UUID? = nil,  targetUserId: UUID? = nil,  resourceType: String? = nil,  resourceId: String? = nil,  outcome: String? = nil,  requestId: String? = nil,  ipAddress: String? = nil,  pageSize: Int? = nil,  cursor: String? = nil) -> Promise<AuditLogPageDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let action = "action_example" // String |  (optional)
let userId = 987 // UUID |  (optional)
let actorUserId = 987 // UUID |  (optional)
let targetUserId = 987 // UUID |  (optional)
let resourceType = "resourceType_example" // String |  (optional)
let resourceId = "resourceId_example" // String |  (optional)
let outcome = "outcome_example" // String |  (optional)
let requestId = "requestId_example" // String |  (optional)
let ipAddress = "ipAddress_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)

ApiAuditLogControllerAPI.getAuditLogs(since: since, before: before, action: action, userId: userId, actorUserId: actorUserId, targetUserId: targetUserId, resourceType: resourceType, resourceId: resourceId, outcome: outcome, requestId: requestId, ipAddress: ipAddress, pageSize: pageSize, cursor: cursor).then {
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
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **action** | **String** |  | [optional] 
 **userId** | **UUID** |  | [optional] 
 **actorUserId** | **UUID** |  | [optional] 
 **targetUserId** | **UUID** |  | [optional] 
 **resourceType** | **String** |  | [optional] 
 **resourceId** | **String** |  | [optional] 
 **outcome** | **String** |  | [optional] 
 **requestId** | **String** |  | [optional] 
 **ipAddress** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 

### Return type

[**AuditLogPageDto**](AuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **searchAuditLogs**
```swift
    open class func searchAuditLogs( auditLogSearchOptions: AuditLogSearchOptions) -> Promise<AuditLogPageDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let auditLogSearchOptions = AuditLogSearchOptions(since: Date(), before: Date(), action: "action_example", userId: 123, actorUserId: 123, targetUserId: 123, resourceType: "resourceType_example", resourceId: "resourceId_example", outcome: "outcome_example", requestId: "requestId_example", ipAddress: "ipAddress_example", eventId: "eventId_example", pageSize: 123, cursor: "cursor_example") // AuditLogSearchOptions | 

ApiAuditLogControllerAPI.searchAuditLogs(auditLogSearchOptions: auditLogSearchOptions).then {
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
 **auditLogSearchOptions** | [**AuditLogSearchOptions**](AuditLogSearchOptions) |  | 

### Return type

[**AuditLogPageDto**](AuditLogPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

