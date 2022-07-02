# BounceControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filterBouncedRecipient**](BounceControllerAPI#filterbouncedrecipient) | **POST** /bounce/filter-recipients | Filter a list of email recipients and remove those who have bounced
[**getBouncedEmail**](BounceControllerAPI#getbouncedemail) | **GET** /bounce/emails/{id} | Get a bounced email.
[**getBouncedEmails**](BounceControllerAPI#getbouncedemails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**getBouncedRecipient**](BounceControllerAPI#getbouncedrecipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**getBouncedRecipients**](BounceControllerAPI#getbouncedrecipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.


# **filterBouncedRecipient**
```swift
    open class func filterBouncedRecipient(filterBouncedRecipientsOptions: FilterBouncedRecipientsOptions, completion: @escaping (_ data: FilterBouncedRecipientsResult?, _ error: Error?) -> Void)
```

Filter a list of email recipients and remove those who have bounced

Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let filterBouncedRecipientsOptions = FilterBouncedRecipientsOptions(emailRecipients: ["emailRecipients_example"]) // FilterBouncedRecipientsOptions | 

// Filter a list of email recipients and remove those who have bounced
BounceControllerAPI.filterBouncedRecipient(filterBouncedRecipientsOptions: filterBouncedRecipientsOptions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterBouncedRecipientsOptions** | [**FilterBouncedRecipientsOptions**](FilterBouncedRecipientsOptions) |  | 

### Return type

[**FilterBouncedRecipientsResult**](FilterBouncedRecipientsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmail**
```swift
    open class func getBouncedEmail(id: UUID, completion: @escaping (_ data: BouncedEmailDto?, _ error: Error?) -> Void)
```

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | ID of the bounced email to fetch

// Get a bounced email.
BounceControllerAPI.getBouncedEmail(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**UUID**]() | ID of the bounced email to fetch | 

### Return type

[**BouncedEmailDto**](BouncedEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedEmails**
```swift
    open class func getBouncedEmails(page: Int? = nil, size: Int? = nil, sort: Sort_getBouncedEmails? = nil, since: Date? = nil, before: Date? = nil, completion: @escaping (_ data: PageBouncedEmail?, _ error: Error?) -> Void)
```

Get paginated list of bounced emails.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index (optional) (default to 0)
let size = 987 // Int | Optional page size  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get paginated list of bounced emails.
BounceControllerAPI.getBouncedEmails(page: page, size: size, sort: sort, since: since, before: before) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index | [optional] [default to 0]
 **size** | **Int** | Optional page size  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageBouncedEmail**](PageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipient**
```swift
    open class func getBouncedRecipient(id: UUID, completion: @escaping (_ data: BouncedRecipientDto?, _ error: Error?) -> Void)
```

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | ID of the bounced recipient

// Get a bounced email.
BounceControllerAPI.getBouncedRecipient(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**UUID**]() | ID of the bounced recipient | 

### Return type

[**BouncedRecipientDto**](BouncedRecipientDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getBouncedRecipients**
```swift
    open class func getBouncedRecipients(page: Int? = nil, size: Int? = nil, sort: Sort_getBouncedRecipients? = nil, since: Date? = nil, before: Date? = nil, completion: @escaping (_ data: PageBouncedRecipients?, _ error: Error?) -> Void)
```

Get paginated list of bounced recipients.

Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index  (optional) (default to 0)
let size = 987 // Int | Optional page size  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get paginated list of bounced recipients.
BounceControllerAPI.getBouncedRecipients(page: page, size: size, sort: sort, since: since, before: before) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** | Optional page index  | [optional] [default to 0]
 **size** | **Int** | Optional page size  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageBouncedRecipients**](PageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

