# SmsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSentSmsMessage**](SmsControllerAPI#deletesentsmsmessage) | **DELETE** /sms/sent/{sentSmsId} | Delete sent SMS message.
[**deleteSentSmsMessages**](SmsControllerAPI#deletesentsmsmessages) | **DELETE** /sms/sent | Delete all sent SMS messages
[**deleteSmsMessage**](SmsControllerAPI#deletesmsmessage) | **DELETE** /sms/{smsId} | Delete SMS message.
[**deleteSmsMessages**](SmsControllerAPI#deletesmsmessages) | **DELETE** /sms | Delete all SMS messages
[**getAllSmsMessages**](SmsControllerAPI#getallsmsmessages) | **GET** /sms | 
[**getReplyForSmsMessage**](SmsControllerAPI#getreplyforsmsmessage) | **GET** /sms/{smsId}/reply | Get reply for an SMS message
[**getSentSmsCount**](SmsControllerAPI#getsentsmscount) | **GET** /sms/sent/count | Get sent SMS count
[**getSentSmsMessage**](SmsControllerAPI#getsentsmsmessage) | **GET** /sms/sent/{sentSmsId} | Get sent SMS content including body. Expects sent SMS to exist by ID.
[**getSentSmsMessagesPaginated**](SmsControllerAPI#getsentsmsmessagespaginated) | **GET** /sms/sent | Get all SMS messages in all phone numbers in paginated form. .
[**getSmsCount**](SmsControllerAPI#getsmscount) | **GET** /sms/count | Get SMS count
[**getSmsMessage**](SmsControllerAPI#getsmsmessage) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**getUnreadSmsCount**](SmsControllerAPI#getunreadsmscount) | **GET** /sms/unreadCount | Get unread SMS count
[**replyToSmsMessage**](SmsControllerAPI#replytosmsmessage) | **POST** /sms/{smsId}/reply | Send a reply to a received SMS message. Replies are sent from the receiving number.
[**sendSms**](SmsControllerAPI#sendsms) | **POST** /sms/send | 
[**setSmsFavourited**](SmsControllerAPI#setsmsfavourited) | **PUT** /sms/{smsId}/favourite | 


# **deleteSentSmsMessage**
```swift
    open class func deleteSentSmsMessage( sentSmsId: UUID) -> Promise<Void>
```

Delete sent SMS message.

Delete a sent SMS message

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let sentSmsId = 987 // UUID | 

// Delete sent SMS message.
SmsControllerAPI.deleteSentSmsMessage(sentSmsId: sentSmsId).then {
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
 **sentSmsId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteSentSmsMessages**
```swift
    open class func deleteSentSmsMessages( phoneNumberId: UUID? = nil) -> Promise<Void>
```

Delete all sent SMS messages

Delete all sent SMS messages or all messages for a given phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID |  (optional)

// Delete all sent SMS messages
SmsControllerAPI.deleteSentSmsMessages(phoneNumberId: phoneNumberId).then {
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
 **phoneNumberId** | **UUID** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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
 **smsId** | **UUID** |  | 

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
 **phoneNumberId** | **UUID** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllSmsMessages**
```swift
    open class func getAllSmsMessages( phoneNumber: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllSmsMessages? = nil,  since: Date? = nil,  before: Date? = nil,  search: String? = nil,  favourite: Bool? = nil,  include: [UUID]? = nil) -> Promise<PageSmsProjection>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumber = 987 // UUID | Optional receiving phone number to filter SMS messages for (optional)
let page = 987 // Int | Optional page index in SMS list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter SMSs received after given date time (optional)
let before = Date() // Date | Optional filter SMSs received before given date time (optional)
let search = "search_example" // String | Optional search filter (optional)
let favourite = true // Bool | Optionally filter results for favourites only (optional) (default to false)
let include = [123] // [UUID] | Optional list of IDs to include in result (optional)

SmsControllerAPI.getAllSmsMessages(phoneNumber: phoneNumber, page: page, size: size, sort: sort, since: since, before: before, search: search, favourite: favourite, include: include).then {
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
 **phoneNumber** | **UUID** | Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **Int** | Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter SMSs received after given date time | [optional] 
 **before** | **Date** | Optional filter SMSs received before given date time | [optional] 
 **search** | **String** | Optional search filter | [optional] 
 **favourite** | **Bool** | Optionally filter results for favourites only | [optional] [default to false]
 **include** | [**[UUID]**](UUID) | Optional list of IDs to include in result | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getReplyForSmsMessage**
```swift
    open class func getReplyForSmsMessage( smsId: UUID) -> Promise<ReplyForSms>
```

Get reply for an SMS message

Get reply for an SMS message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let smsId = 987 // UUID | 

// Get reply for an SMS message
SmsControllerAPI.getReplyForSmsMessage(smsId: smsId).then {
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
 **smsId** | **UUID** |  | 

### Return type

[**ReplyForSms**](ReplyForSms)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsCount**
```swift
    open class func getSentSmsCount() -> Promise<CountDto>
```

Get sent SMS count

Get number of sent SMS

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get sent SMS count
SmsControllerAPI.getSentSmsCount().then {
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

# **getSentSmsMessage**
```swift
    open class func getSentSmsMessage( sentSmsId: UUID) -> Promise<SentSmsDto>
```

Get sent SMS content including body. Expects sent SMS to exist by ID.

Returns an SMS summary object with content.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let sentSmsId = 987 // UUID | 

// Get sent SMS content including body. Expects sent SMS to exist by ID.
SmsControllerAPI.getSentSmsMessage(sentSmsId: sentSmsId).then {
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
 **sentSmsId** | **UUID** |  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSentSmsMessagesPaginated**
```swift
    open class func getSentSmsMessagesPaginated( phoneNumber: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentSmsMessagesPaginated? = nil,  since: Date? = nil,  before: Date? = nil,  search: String? = nil) -> Promise<PageSentSmsProjection>
```

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumber = 987 // UUID | Optional phone number to filter sent SMS messages for (optional)
let page = 987 // Int | Optional page index in SMS list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Optional filter SMSs received after given date time (optional)
let before = Date() // Date | Optional filter SMSs received before given date time (optional)
let search = "search_example" // String | Optional search filter (optional)

// Get all SMS messages in all phone numbers in paginated form. .
SmsControllerAPI.getSentSmsMessagesPaginated(phoneNumber: phoneNumber, page: page, size: size, sort: sort, since: since, before: before, search: search).then {
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
 **phoneNumber** | **UUID** | Optional phone number to filter sent SMS messages for | [optional] 
 **page** | **Int** | Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Optional filter SMSs received after given date time | [optional] 
 **before** | **Date** | Optional filter SMSs received before given date time | [optional] 
 **search** | **String** | Optional search filter | [optional] 

### Return type

[**PageSentSmsProjection**](PageSentSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getSmsCount**
```swift
    open class func getSmsCount() -> Promise<CountDto>
```

Get SMS count

Get number of SMS

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get SMS count
SmsControllerAPI.getSmsCount().then {
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
 **smsId** | **UUID** |  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUnreadSmsCount**
```swift
    open class func getUnreadSmsCount() -> Promise<UnreadCount>
```

Get unread SMS count

Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get unread SMS count
SmsControllerAPI.getUnreadSmsCount().then {
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

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **replyToSmsMessage**
```swift
    open class func replyToSmsMessage( smsId: UUID,  smsReplyOptions: SmsReplyOptions) -> Promise<SentSmsDto>
```

Send a reply to a received SMS message. Replies are sent from the receiving number.

Reply to an SMS message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let smsId = 987 // UUID | 
let smsReplyOptions = SmsReplyOptions(body: "body_example") // SmsReplyOptions | 

// Send a reply to a received SMS message. Replies are sent from the receiving number.
SmsControllerAPI.replyToSmsMessage(smsId: smsId, smsReplyOptions: smsReplyOptions).then {
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
 **smsId** | **UUID** |  | 
 **smsReplyOptions** | [**SmsReplyOptions**](SmsReplyOptions) |  | 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendSms**
```swift
    open class func sendSms( smsSendOptions: SmsSendOptions,  fromPhoneNumber: String? = nil,  fromPhoneId: UUID? = nil) -> Promise<SentSmsDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let smsSendOptions = SmsSendOptions(to: "to_example", body: "body_example") // SmsSendOptions | 
let fromPhoneNumber = "fromPhoneNumber_example" // String | Phone number to send from in E.164 format (optional)
let fromPhoneId = 987 // UUID | Phone number ID to send from in UUID form (optional)

SmsControllerAPI.sendSms(smsSendOptions: smsSendOptions, fromPhoneNumber: fromPhoneNumber, fromPhoneId: fromPhoneId).then {
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
 **smsSendOptions** | [**SmsSendOptions**](SmsSendOptions) |  | 
 **fromPhoneNumber** | **String** | Phone number to send from in E.164 format | [optional] 
 **fromPhoneId** | **UUID** | Phone number ID to send from in UUID form | [optional] 

### Return type

[**SentSmsDto**](SentSmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setSmsFavourited**
```swift
    open class func setSmsFavourited( smsId: UUID,  favourited: Bool) -> Promise<SmsDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let smsId = 987 // UUID | ID of SMS to set favourite state
let favourited = true // Bool | 

SmsControllerAPI.setSmsFavourited(smsId: smsId, favourited: favourited).then {
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
 **smsId** | **UUID** | ID of SMS to set favourite state | 
 **favourited** | **Bool** |  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

