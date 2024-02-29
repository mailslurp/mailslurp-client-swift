# PhoneControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmergencyAddress**](PhoneControllerAPI#createemergencyaddress) | **POST** /phone/emergency-addresses | 
[**deleteEmergencyAddress**](PhoneControllerAPI#deleteemergencyaddress) | **DELETE** /phone/emergency-addresses/{addressId} | 
[**deletePhoneNumber**](PhoneControllerAPI#deletephonenumber) | **DELETE** /phone/numbers/{phoneNumberId} | 
[**getEmergencyAddress**](PhoneControllerAPI#getemergencyaddress) | **GET** /phone/emergency-addresses/{addressId} | 
[**getEmergencyAddresses**](PhoneControllerAPI#getemergencyaddresses) | **GET** /phone/emergency-addresses | 
[**getPhoneNumber**](PhoneControllerAPI#getphonenumber) | **GET** /phone/numbers/{phoneNumberId} | 
[**getPhoneNumbers**](PhoneControllerAPI#getphonenumbers) | **GET** /phone/numbers | 
[**getPhonePlans**](PhoneControllerAPI#getphoneplans) | **GET** /phone/plans | 
[**testPhoneNumberSendSms**](PhoneControllerAPI#testphonenumbersendsms) | **POST** /phone/numbers/{phoneNumberId}/test | 


# **createEmergencyAddress**
```swift
    open class func createEmergencyAddress( createEmergencyAddressOptions: CreateEmergencyAddressOptions) -> Promise<EmergencyAddress>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createEmergencyAddressOptions = CreateEmergencyAddressOptions(customerName: "customerName_example", address1: "address1_example", city: "city_example", region: "region_example", postalCode: "postalCode_example", isoCountryCode: "isoCountryCode_example", displayName: "displayName_example") // CreateEmergencyAddressOptions | 

PhoneControllerAPI.createEmergencyAddress(createEmergencyAddressOptions: createEmergencyAddressOptions).then {
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
 **createEmergencyAddressOptions** | [**CreateEmergencyAddressOptions**](CreateEmergencyAddressOptions) |  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmergencyAddress**
```swift
    open class func deleteEmergencyAddress( addressId: UUID) -> Promise<EmptyResponseDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let addressId = 987 // UUID | 

PhoneControllerAPI.deleteEmergencyAddress(addressId: addressId).then {
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
 **addressId** | **UUID** |  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deletePhoneNumber**
```swift
    open class func deletePhoneNumber( phoneNumberId: UUID) -> Promise<Void>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 

PhoneControllerAPI.deletePhoneNumber(phoneNumberId: phoneNumberId).then {
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
 **phoneNumberId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddress**
```swift
    open class func getEmergencyAddress( addressId: UUID) -> Promise<EmergencyAddress>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let addressId = 987 // UUID | 

PhoneControllerAPI.getEmergencyAddress(addressId: addressId).then {
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
 **addressId** | **UUID** |  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmergencyAddresses**
```swift
    open class func getEmergencyAddresses() -> Promise<[EmergencyAddressDto]>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


PhoneControllerAPI.getEmergencyAddresses().then {
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

[**[EmergencyAddressDto]**](EmergencyAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumber**
```swift
    open class func getPhoneNumber( phoneNumberId: UUID) -> Promise<PhoneNumberDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 

PhoneControllerAPI.getPhoneNumber(phoneNumberId: phoneNumberId).then {
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
 **phoneNumberId** | **UUID** |  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumbers**
```swift
    open class func getPhoneNumbers( phoneCountry: PhoneCountry_getPhoneNumbers? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getPhoneNumbers? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PagePhoneNumberProjection>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneCountry = "phoneCountry_example" // String | Optional phone country (optional)
let page = 987 // Int | Optional page index for list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

PhoneControllerAPI.getPhoneNumbers(phoneCountry: phoneCountry, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **phoneCountry** | **String** | Optional phone country | [optional] 
 **page** | **Int** | Optional page index for list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PagePhoneNumberProjection**](PagePhoneNumberProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhonePlans**
```swift
    open class func getPhonePlans() -> Promise<[PhonePlanDto]>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


PhoneControllerAPI.getPhonePlans().then {
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

[**[PhonePlanDto]**](PhonePlanDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testPhoneNumberSendSms**
```swift
    open class func testPhoneNumberSendSms( phoneNumberId: UUID,  testPhoneNumberOptions: TestPhoneNumberOptions,  xTestId: String? = nil) -> Promise<Void>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let testPhoneNumberOptions = TestPhoneNumberOptions(message: "message_example") // TestPhoneNumberOptions | 
let xTestId = "xTestId_example" // String |  (optional)

PhoneControllerAPI.testPhoneNumberSendSms(phoneNumberId: phoneNumberId, testPhoneNumberOptions: testPhoneNumberOptions, xTestId: xTestId).then {
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
 **phoneNumberId** | **UUID** |  | 
 **testPhoneNumberOptions** | [**TestPhoneNumberOptions**](TestPhoneNumberOptions) |  | 
 **xTestId** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

