# MissedSmsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllMissedSmsMessages**](MissedSmsControllerAPI#getallmissedsmsmessages) | **GET** /missed-sms | Get all missed SMS messages in paginated format
[**getMissedSmsCount**](MissedSmsControllerAPI#getmissedsmscount) | **GET** /missed-sms/count | Get missed SMS count
[**getMissedSmsMessage**](MissedSmsControllerAPI#getmissedsmsmessage) | **GET** /missed-sms/{missedSmsId} | Get missed SMS content


# **getAllMissedSmsMessages**
```swift
    open class func getAllMissedSmsMessages( phoneNumber: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllMissedSmsMessages? = nil,  since: Date? = nil,  before: Date? = nil,  search: String? = nil) -> Promise<PageMissedSmsProjection>
```

Get all missed SMS messages in paginated format

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumber = 987 // UUID | Optional receiving phone number to filter missed SMS for (optional)
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter missed SMS after given date time (optional)
let before = Date() // Date | Optional filter missed SMS before given date time (optional)
let search = "search_example" // String | Optional search filter (optional)

// Get all missed SMS messages in paginated format
MissedSmsControllerAPI.getAllMissedSmsMessages(phoneNumber: phoneNumber, page: page, size: size, sort: sort, since: since, before: before, search: search).then {
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
 **phoneNumber** | **UUID** | Optional receiving phone number to filter missed SMS for | [optional] 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter missed SMS after given date time | [optional] 
 **before** | **Date** | Optional filter missed SMS before given date time | [optional] 
 **search** | **String** | Optional search filter | [optional] 

### Return type

[**PageMissedSmsProjection**](PageMissedSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedSmsCount**
```swift
    open class func getMissedSmsCount() -> Promise<CountDto>
```

Get missed SMS count

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get missed SMS count
MissedSmsControllerAPI.getMissedSmsCount().then {
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

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getMissedSmsMessage**
```swift
    open class func getMissedSmsMessage( missedSmsId: UUID) -> Promise<MissedSmsDto>
```

Get missed SMS content

Returns a missed SMS with full content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let missedSmsId = 987 // UUID | 

// Get missed SMS content
MissedSmsControllerAPI.getMissedSmsMessage(missedSmsId: missedSmsId).then {
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
 **missedSmsId** | **UUID** |  | 

### Return type

[**MissedSmsDto**](MissedSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

