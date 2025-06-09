# MFAControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTotpDeviceForCustom**](MFAControllerAPI#createtotpdeviceforcustom) | **POST** /mfa/totp/device/custom | Create a TOTP device from custom options
[**createTotpDeviceForOtpAuthUrl**](MFAControllerAPI#createtotpdeviceforotpauthurl) | **POST** /mfa/totp/device/otpAuthUrl | Create a TOTP device from an OTP Auth URL
[**getTotpDevice**](MFAControllerAPI#gettotpdevice) | **GET** /mfa/totp/device/{id} | Get a TOTP device by ID
[**getTotpDeviceBy**](MFAControllerAPI#gettotpdeviceby) | **GET** /mfa/totp/device/by | Get a TOTP device by username, issuer, or name. Returns empty if not found.
[**getTotpDeviceCode**](MFAControllerAPI#gettotpdevicecode) | **GET** /mfa/totp/device/{id}/code | Get a TOTP device code by device ID


# **createTotpDeviceForCustom**
```swift
    open class func createTotpDeviceForCustom( createTotpDeviceOtpAuthUrlOptions: CreateTotpDeviceOtpAuthUrlOptions) -> Promise<TotpDeviceDto>
```

Create a TOTP device from custom options

Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createTotpDeviceOtpAuthUrlOptions = CreateTotpDeviceOtpAuthUrlOptions(otpAuthUrl: "otpAuthUrl_example", name: "name_example", username: "username_example", issuer: "issuer_example", digits: 123, period: 123, algorithm: "algorithm_example") // CreateTotpDeviceOtpAuthUrlOptions | 

// Create a TOTP device from custom options
MFAControllerAPI.createTotpDeviceForCustom(createTotpDeviceOtpAuthUrlOptions: createTotpDeviceOtpAuthUrlOptions).then {
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
 **createTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions) |  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTotpDeviceForOtpAuthUrl**
```swift
    open class func createTotpDeviceForOtpAuthUrl( createTotpDeviceOtpAuthUrlOptions: CreateTotpDeviceOtpAuthUrlOptions) -> Promise<TotpDeviceDto>
```

Create a TOTP device from an OTP Auth URL

Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createTotpDeviceOtpAuthUrlOptions = CreateTotpDeviceOtpAuthUrlOptions(otpAuthUrl: "otpAuthUrl_example", name: "name_example", username: "username_example", issuer: "issuer_example", digits: 123, period: 123, algorithm: "algorithm_example") // CreateTotpDeviceOtpAuthUrlOptions | 

// Create a TOTP device from an OTP Auth URL
MFAControllerAPI.createTotpDeviceForOtpAuthUrl(createTotpDeviceOtpAuthUrlOptions: createTotpDeviceOtpAuthUrlOptions).then {
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
 **createTotpDeviceOtpAuthUrlOptions** | [**CreateTotpDeviceOtpAuthUrlOptions**](CreateTotpDeviceOtpAuthUrlOptions) |  | 

### Return type

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDevice**
```swift
    open class func getTotpDevice( _id: UUID) -> Promise<TotpDeviceDto>
```

Get a TOTP device by ID

Get Time-Based One-Time Password (TOTP) device by its ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get a TOTP device by ID
MFAControllerAPI.getTotpDevice(_id: _id).then {
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

[**TotpDeviceDto**](TotpDeviceDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDeviceBy**
```swift
    open class func getTotpDeviceBy( name: String? = nil,  issuer: String? = nil,  username: String? = nil) -> Promise<TotpDeviceOptionalDto>
```

Get a TOTP device by username, issuer, or name. Returns empty if not found.

Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let name = "name_example" // String | Optional name filter (optional)
let issuer = "issuer_example" // String | Optional issuer filter (optional)
let username = "username_example" // String | Optional username filter (optional)

// Get a TOTP device by username, issuer, or name. Returns empty if not found.
MFAControllerAPI.getTotpDeviceBy(name: name, issuer: issuer, username: username).then {
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
 **name** | **String** | Optional name filter | [optional] 
 **issuer** | **String** | Optional issuer filter | [optional] 
 **username** | **String** | Optional username filter | [optional] 

### Return type

[**TotpDeviceOptionalDto**](TotpDeviceOptionalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTotpDeviceCode**
```swift
    open class func getTotpDeviceCode( _id: UUID,  at: Date? = nil) -> Promise<TotpDeviceCodeDto>
```

Get a TOTP device code by device ID

Get Time-Based One-Time Password for a device by its ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 
let at = Date() // Date |  (optional)

// Get a TOTP device code by device ID
MFAControllerAPI.getTotpDeviceCode(_id: _id, at: at).then {
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
 **at** | **Date** |  | [optional] 

### Return type

[**TotpDeviceCodeDto**](TotpDeviceCodeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

