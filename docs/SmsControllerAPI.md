# SmsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSmsMessage**](SmsControllerAPI#deletesmsmessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**deleteSmsMessages**](SmsControllerAPI#deletesmsmessages) | **DELETE** /sms | Delete all SMS messages
[**getSmsMessage**](SmsControllerAPI#getsmsmessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**getSmsMessagesPaginated**](SmsControllerAPI#getsmsmessagespaginated) | **GET** /sms | Get all SMS messages in all phone numbers in paginated form. .


# **deleteSmsMessage**
```swift
    open class func deleteSmsMessage( smsId: UUID) -> Promise<Void>
```

Delete SMS message.

Delete an SMS message

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let smsId = 987 // UUID | 

// Delete SMS message.
SmsControllerAPI.deleteSmsMessage(smsId: smsId).then {
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
 **smsId** | [**UUID**]() |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSmsMessages**
```swift
    open class func deleteSmsMessages( phoneNumberId: UUID? = nil) -> Promise<Void>
```

Delete all SMS messages

Delete all SMS messages or all messages for a given phone number

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID |  (optional)

// Delete all SMS messages
SmsControllerAPI.deleteSmsMessages(phoneNumberId: phoneNumberId).then {
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
 **phoneNumberId** | [**UUID**]() |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsMessage**
```swift
    open class func getSmsMessage( smsId: UUID) -> Promise<SmsDto>
```

Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.

Returns a SMS summary object with content.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let smsId = 987 // UUID | 

// Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
SmsControllerAPI.getSmsMessage(smsId: smsId).then {
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
 **smsId** | [**UUID**]() |  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsMessagesPaginated**
```swift
    open class func getSmsMessagesPaginated( phoneNumber: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSmsMessagesPaginated? = nil,  unreadOnly: Bool? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageSmsProjection>
```

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumber = 987 // UUID | Optional receiving phone number to filter SMS messages for (optional)
let page = 987 // Int | Optional page index in SMS list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let unreadOnly = true // Bool | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional) (default to false)
let since = Date() // Date | Optional filter SMSs received after given date time (optional)
let before = Date() // Date | Optional filter SMSs received before given date time (optional)

// Get all SMS messages in all phone numbers in paginated form. .
SmsControllerAPI.getSmsMessagesPaginated(phoneNumber: phoneNumber, page: page, size: size, sort: sort, unreadOnly: unreadOnly, since: since, before: before).then {
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
 **phoneNumber** | [**UUID**]() | Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **Int** | Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **unreadOnly** | **Bool** | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **since** | **Date** | Optional filter SMSs received after given date time | [optional] 
 **before** | **Date** | Optional filter SMSs received before given date time | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

