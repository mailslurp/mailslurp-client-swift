# ImapControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imapServerFetch**](ImapControllerAPI#imapserverfetch) | **POST** /imap/server/fetch | Fetch message in an inbox
[**imapServerList**](ImapControllerAPI#imapserverlist) | **POST** /imap/server/list | List messages in an inbox
[**imapServerSearch**](ImapControllerAPI#imapserversearch) | **POST** /imap/server/search | Search messages in an inbox
[**imapServerStatus**](ImapControllerAPI#imapserverstatus) | **POST** /imap/server/status | Get status for mailbox
[**imapServerUpdateFlags**](ImapControllerAPI#imapserverupdateflags) | **POST** /imap/server/update-flags | 


# **imapServerFetch**
```swift
    open class func imapServerFetch( seqNum: Int64,  inboxId: UUID? = nil) -> Promise<ImapServerFetchResult>
```

Fetch message in an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let seqNum = 987 // Int64 | 
let inboxId = 987 // UUID | Inbox ID to search (optional)

// Fetch message in an inbox
ImapControllerAPI.imapServerFetch(seqNum: seqNum, inboxId: inboxId).then {
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
 **seqNum** | **Int64** |  | 
 **inboxId** | **UUID** | Inbox ID to search | [optional] 

### Return type

[**ImapServerFetchResult**](ImapServerFetchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerList**
```swift
    open class func imapServerList( imapServerListOptions: ImapServerListOptions,  inboxId: UUID? = nil) -> Promise<ImapServerListResult>
```

List messages in an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let imapServerListOptions = ImapServerListOptions(uidSet: "uidSet_example", seqSet: "seqSet_example") // ImapServerListOptions | 
let inboxId = 987 // UUID | Inbox ID to list (optional)

// List messages in an inbox
ImapControllerAPI.imapServerList(imapServerListOptions: imapServerListOptions, inboxId: inboxId).then {
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
 **imapServerListOptions** | [**ImapServerListOptions**](ImapServerListOptions) |  | 
 **inboxId** | **UUID** | Inbox ID to list | [optional] 

### Return type

[**ImapServerListResult**](ImapServerListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerSearch**
```swift
    open class func imapServerSearch( imapServerSearchOptions: ImapServerSearchOptions,  inboxId: UUID? = nil) -> Promise<ImapServerSearchResult>
```

Search messages in an inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let imapServerSearchOptions = ImapServerSearchOptions(seqNum: "seqNum_example", uid: "uid_example", since: Date(), before: Date(), sentSince: Date(), sentBefore: Date(), header: "TODO", body: ["body_example"], text: ["text_example"], withFlags: ["withFlags_example"], withoutFlags: ["withoutFlags_example"]) // ImapServerSearchOptions | 
let inboxId = 987 // UUID | Inbox ID to search (optional)

// Search messages in an inbox
ImapControllerAPI.imapServerSearch(imapServerSearchOptions: imapServerSearchOptions, inboxId: inboxId).then {
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
 **imapServerSearchOptions** | [**ImapServerSearchOptions**](ImapServerSearchOptions) |  | 
 **inboxId** | **UUID** | Inbox ID to search | [optional] 

### Return type

[**ImapServerSearchResult**](ImapServerSearchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerStatus**
```swift
    open class func imapServerStatus( imapServerStatusOptions: ImapServerStatusOptions,  inboxId: UUID? = nil) -> Promise<ImapServerStatusResult>
```

Get status for mailbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let imapServerStatusOptions = ImapServerStatusOptions(name: "name_example", statusItems: ["statusItems_example"]) // ImapServerStatusOptions | 
let inboxId = 987 // UUID | Inbox ID to list (optional)

// Get status for mailbox
ImapControllerAPI.imapServerStatus(imapServerStatusOptions: imapServerStatusOptions, inboxId: inboxId).then {
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
 **imapServerStatusOptions** | [**ImapServerStatusOptions**](ImapServerStatusOptions) |  | 
 **inboxId** | **UUID** | Inbox ID to list | [optional] 

### Return type

[**ImapServerStatusResult**](ImapServerStatusResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **imapServerUpdateFlags**
```swift
    open class func imapServerUpdateFlags( imapUpdateFlagsOptions: ImapUpdateFlagsOptions,  inboxId: UUID? = nil) -> Promise<Void>
```



Update message flags

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let imapUpdateFlagsOptions = ImapUpdateFlagsOptions(operation: "operation_example", flags: ["flags_example"], uidSet: "uidSet_example", seqSet: "seqSet_example") // ImapUpdateFlagsOptions | 
let inboxId = 987 // UUID |  (optional)

ImapControllerAPI.imapServerUpdateFlags(imapUpdateFlagsOptions: imapUpdateFlagsOptions, inboxId: inboxId).then {
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
 **imapUpdateFlagsOptions** | [**ImapUpdateFlagsOptions**](ImapUpdateFlagsOptions) |  | 
 **inboxId** | **UUID** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

