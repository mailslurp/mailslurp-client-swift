# BounceControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBouncedEmail**](BounceControllerAPI#getbouncedemail) | **GET** /bounce/emails/{id} | Get a bounced email.
[**getBouncedEmails**](BounceControllerAPI#getbouncedemails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**getBouncedRecipient**](BounceControllerAPI#getbouncedrecipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**getBouncedRecipients**](BounceControllerAPI#getbouncedrecipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.


# **getBouncedEmail**
```swift
    open class func getBouncedEmail( _id: UUID) -> Promise<BouncedEmailDto>
```

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of the bounced email to fetch

// Get a bounced email.
BounceControllerAPI.getBouncedEmail(_id: _id).then {
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
 **_id** | [**UUID**]() | ID of the bounced email to fetch | 

### Return type

[**BouncedEmailDto**](BouncedEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmails**
```swift
    open class func getBouncedEmails( before: Date? = nil,  page: Int? = nil,  since: Date? = nil,  size: Int? = nil,  sort: Sort_getBouncedEmails? = nil) -> Promise<PageBouncedEmail>
```

Get paginated list of bounced emails.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter by created at before the given timestamp (optional)
let page = 987 // Int | Optional page index  (optional) (default to 0)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let size = 987 // Int | Optional page size  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get paginated list of bounced emails.
BounceControllerAPI.getBouncedEmails(before: before, page: page, since: since, size: size, sort: sort).then {
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
 **page** | **Int** | Optional page index  | [optional] [default to 0]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **size** | **Int** | Optional page size  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageBouncedEmail**](PageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipient**
```swift
    open class func getBouncedRecipient( _id: UUID) -> Promise<BouncedRecipientDto>
```

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of the bounced recipient

// Get a bounced email.
BounceControllerAPI.getBouncedRecipient(_id: _id).then {
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
 **_id** | [**UUID**]() | ID of the bounced recipient | 

### Return type

[**BouncedRecipientDto**](BouncedRecipientDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipients**
```swift
    open class func getBouncedRecipients( before: Date? = nil,  page: Int? = nil,  since: Date? = nil,  size: Int? = nil,  sort: Sort_getBouncedRecipients? = nil) -> Promise<PageBouncedRecipients>
```

Get paginated list of bounced recipients.

Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter by created at before the given timestamp (optional)
let page = 987 // Int | Optional page index  (optional) (default to 0)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let size = 987 // Int | Optional page size  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get paginated list of bounced recipients.
BounceControllerAPI.getBouncedRecipients(before: before, page: page, since: since, size: size, sort: sort).then {
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
 **page** | **Int** | Optional page index  | [optional] [default to 0]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **size** | **Int** | Optional page size  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageBouncedRecipients**](PageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

