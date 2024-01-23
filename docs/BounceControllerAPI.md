# BounceControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filterBouncedRecipient**](BounceControllerAPI#filterbouncedrecipient) | **POST** /bounce/filter-recipients | Filter a list of email recipients and remove those who have bounced
[**getAccountBounceBlockStatus**](BounceControllerAPI#getaccountbounceblockstatus) | **GET** /bounce/account-block | Can account send email
[**getBouncedEmail**](BounceControllerAPI#getbouncedemail) | **GET** /bounce/emails/{id} | Get a bounced email.
[**getBouncedEmails**](BounceControllerAPI#getbouncedemails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**getBouncedRecipient**](BounceControllerAPI#getbouncedrecipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**getBouncedRecipients**](BounceControllerAPI#getbouncedrecipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.
[**getComplaint**](BounceControllerAPI#getcomplaint) | **GET** /bounce/complaints/{id} | Get complaint
[**getComplaints**](BounceControllerAPI#getcomplaints) | **GET** /bounce/complaints | Get paginated list of complaints.
[**getListUnsubscribeRecipients**](BounceControllerAPI#getlistunsubscriberecipients) | **GET** /bounce/list-unsubscribe-recipients | Get paginated list of unsubscribed recipients.


# **filterBouncedRecipient**
```swift
    open class func filterBouncedRecipient( filterBouncedRecipientsOptions: FilterBouncedRecipientsOptions) -> Promise<FilterBouncedRecipientsResult>
```

Filter a list of email recipients and remove those who have bounced

Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let filterBouncedRecipientsOptions = FilterBouncedRecipientsOptions(emailRecipients: ["emailRecipients_example"]) // FilterBouncedRecipientsOptions | 

// Filter a list of email recipients and remove those who have bounced
BounceControllerAPI.filterBouncedRecipient(filterBouncedRecipientsOptions: filterBouncedRecipientsOptions).then {
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
 **filterBouncedRecipientsOptions** | [**FilterBouncedRecipientsOptions**](FilterBouncedRecipientsOptions) |  | 

### Return type

[**FilterBouncedRecipientsResult**](FilterBouncedRecipientsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAccountBounceBlockStatus**
```swift
    open class func getAccountBounceBlockStatus() -> Promise<AccountBounceBlockDto>
```

Can account send email

Check if account block status prevents sending

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Can account send email
BounceControllerAPI.getAccountBounceBlockStatus().then {
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

[**AccountBounceBlockDto**](AccountBounceBlockDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

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
 **_id** | **UUID** | ID of the bounced email to fetch | 

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
    open class func getBouncedEmails( page: Int? = nil,  size: Int? = nil,  sort: Sort_getBouncedEmails? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageBouncedEmail>
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
BounceControllerAPI.getBouncedEmails(page: page, size: size, sort: sort, since: since, before: before).then {
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
 **_id** | **UUID** | ID of the bounced recipient | 

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
    open class func getBouncedRecipients( page: Int? = nil,  size: Int? = nil,  sort: Sort_getBouncedRecipients? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageBouncedRecipients>
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
BounceControllerAPI.getBouncedRecipients(page: page, size: size, sort: sort, since: since, before: before).then {
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

# **getComplaint**
```swift
    open class func getComplaint( _id: UUID) -> Promise<Complaint>
```

Get complaint

Get complaint

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of the complaint

// Get complaint
BounceControllerAPI.getComplaint(_id: _id).then {
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
 **_id** | **UUID** | ID of the complaint | 

### Return type

[**Complaint**](Complaint)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getComplaints**
```swift
    open class func getComplaints( page: Int? = nil,  size: Int? = nil,  sort: Sort_getComplaints? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageComplaint>
```

Get paginated list of complaints.

SMTP complaints made against your account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index  (optional) (default to 0)
let size = 987 // Int | Optional page size  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get paginated list of complaints.
BounceControllerAPI.getComplaints(page: page, size: size, sort: sort, since: since, before: before).then {
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
 **page** | **Int** | Optional page index  | [optional] [default to 0]
 **size** | **Int** | Optional page size  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageComplaint**](PageComplaint)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getListUnsubscribeRecipients**
```swift
    open class func getListUnsubscribeRecipients( page: Int? = nil,  size: Int? = nil,  sort: Sort_getListUnsubscribeRecipients? = nil,  domainId: UUID? = nil) -> Promise<PageListUnsubscribeRecipients>
```

Get paginated list of unsubscribed recipients.

Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index (optional) (default to 0)
let size = 987 // Int | Optional page size  (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let domainId = 987 // UUID | Filter by domainId (optional)

// Get paginated list of unsubscribed recipients.
BounceControllerAPI.getListUnsubscribeRecipients(page: page, size: size, sort: sort, domainId: domainId).then {
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
 **size** | **Int** | Optional page size  | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **domainId** | **UUID** | Filter by domainId | [optional] 

### Return type

[**PageListUnsubscribeRecipients**](PageListUnsubscribeRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

