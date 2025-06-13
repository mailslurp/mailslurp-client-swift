# EmailVerificationControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllValidationRequests**](EmailVerificationControllerAPI#deleteallvalidationrequests) | **DELETE** /email-verification | Delete all validation requests
[**deleteValidationRequest**](EmailVerificationControllerAPI#deletevalidationrequest) | **DELETE** /email-verification/{id} | Delete a validation record
[**getValidationRequests**](EmailVerificationControllerAPI#getvalidationrequests) | **GET** /email-verification/validation-requests | Validate a list of email addresses. Per unit billing. See your plan for pricing.
[**validateEmailAddressList**](EmailVerificationControllerAPI#validateemailaddresslist) | **POST** /email-verification/email-address-list | Validate a list of email addresses. Per unit billing. See your plan for pricing.


# **deleteAllValidationRequests**
```swift
    open class func deleteAllValidationRequests() -> Promise<Void>
```

Delete all validation requests

Remove validation requests

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all validation requests
EmailVerificationControllerAPI.deleteAllValidationRequests().then {
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

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteValidationRequest**
```swift
    open class func deleteValidationRequest( _id: UUID) -> Promise<Void>
```

Delete a validation record

Delete a validation record

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete a validation record
EmailVerificationControllerAPI.deleteValidationRequest(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getValidationRequests**
```swift
    open class func getValidationRequests( page: Int? = nil,  size: Int? = nil,  sort: Sort_getValidationRequests? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  isValid: Bool? = nil) -> Promise<PageEmailValidationRequest>
```

Validate a list of email addresses. Per unit billing. See your plan for pricing.

List email verification requests

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for paginated result list. (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let isValid = true // Bool | Filter where email is valid is true or false (optional)

// Validate a list of email addresses. Per unit billing. See your plan for pricing.
EmailVerificationControllerAPI.getValidationRequests(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, isValid: isValid).then {
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
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **isValid** | **Bool** | Filter where email is valid is true or false | [optional] 

### Return type

[**PageEmailValidationRequest**](PageEmailValidationRequest)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateEmailAddressList**
```swift
    open class func validateEmailAddressList( validateEmailAddressListOptions: ValidateEmailAddressListOptions) -> Promise<ValidateEmailAddressListResult>
```

Validate a list of email addresses. Per unit billing. See your plan for pricing.

Verify a list of email addresses is valid and can be contacted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let validateEmailAddressListOptions = ValidateEmailAddressListOptions(emailAddressList: ["emailAddressList_example"], ignoreOldResults: false) // ValidateEmailAddressListOptions | 

// Validate a list of email addresses. Per unit billing. See your plan for pricing.
EmailVerificationControllerAPI.validateEmailAddressList(validateEmailAddressListOptions: validateEmailAddressListOptions).then {
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
 **validateEmailAddressListOptions** | [**ValidateEmailAddressListOptions**](ValidateEmailAddressListOptions) |  | 

### Return type

[**ValidateEmailAddressListResult**](ValidateEmailAddressListResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

