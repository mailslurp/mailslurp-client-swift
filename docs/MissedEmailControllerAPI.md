# MissedEmailControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedEmails**](MissedEmailControllerAPI#getallmissedemails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**getAllUnknownMissedEmails**](MissedEmailControllerAPI#getallunknownmissedemails) | **GET** /missed-emails/unknown | Get all unknown missed emails in paginated format
[**getMissedEmail**](MissedEmailControllerAPI#getmissedemail) | **GET** /missed-emails/{missedEmailId} | Get MissedEmail
[**waitForNthMissedEmail**](MissedEmailControllerAPI#waitfornthmissedemail) | **GET** /missed-emails/waitForNthMissedEmail | Wait for Nth missed email


# **getAllMissedEmails**
```swift
    open class func getAllMissedEmails( inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getAllMissedEmails? = nil) -> Promise<PageMissedEmailProjection>
```

Get all MissedEmails in paginated format

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox ID filter (optional)
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all MissedEmails in paginated format
MissedEmailControllerAPI.getAllMissedEmails(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort).then {
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
 **inboxId** | [**UUID**]() | Optional inbox ID filter | [optional] 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllUnknownMissedEmails**
```swift
    open class func getAllUnknownMissedEmails( inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getAllUnknownMissedEmails? = nil) -> Promise<PageUnknownMissedEmailProjection>
```

Get all unknown missed emails in paginated format

Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox ID filter (optional)
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all unknown missed emails in paginated format
MissedEmailControllerAPI.getAllUnknownMissedEmails(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort).then {
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
 **inboxId** | [**UUID**]() | Optional inbox ID filter | [optional] 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageUnknownMissedEmailProjection**](PageUnknownMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedEmail**
```swift
    open class func getMissedEmail( missedEmailId: UUID) -> Promise<MissedEmail>
```

Get MissedEmail

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let missedEmailId = 987 // UUID | missedEmailId

// Get MissedEmail
MissedEmailControllerAPI.getMissedEmail(missedEmailId: missedEmailId).then {
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
 **missedEmailId** | [**UUID**]() | missedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForNthMissedEmail**
```swift
    open class func waitForNthMissedEmail( inboxId: UUID? = nil,  index: Int? = nil,  timeout: Int64? = nil) -> Promise<MissedEmail>
```

Wait for Nth missed email

Wait for 0 based index missed email

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox ID filter (optional)
let index = 987 // Int | Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1 (optional)
let timeout = 987 // Int64 | Optional timeout milliseconds (optional)

// Wait for Nth missed email
MissedEmailControllerAPI.waitForNthMissedEmail(inboxId: inboxId, index: index, timeout: timeout).then {
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
 **inboxId** | [**UUID**]() | Optional inbox ID filter | [optional] 
 **index** | **Int** | Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] 
 **timeout** | **Int64** | Optional timeout milliseconds | [optional] 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

