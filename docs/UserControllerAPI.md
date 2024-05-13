# UserControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJsonPropertyAsString**](UserControllerAPI#getjsonpropertyasstring) | **POST** /user/json/pluck | 
[**getUserInfo**](UserControllerAPI#getuserinfo) | **GET** /user/info | 


# **getJsonPropertyAsString**
```swift
    open class func getJsonPropertyAsString( property: String,  body: AnyCodable) -> Promise<String>
```



Utility function to extract properties from JSON objects in language where this is cumbersome.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let property = "property_example" // String | JSON property name or dot separated path selector such as `a.b.c`
let body = "TODO" // AnyCodable | 

UserControllerAPI.getJsonPropertyAsString(property: property, body: body).then {
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
 **property** | **String** | JSON property name or dot separated path selector such as &#x60;a.b.c&#x60; | 
 **body** | **AnyCodable** |  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getUserInfo**
```swift
    open class func getUserInfo() -> Promise<UserInfoDto>
```



Get account information for your user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


UserControllerAPI.getUserInfo().then {
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

[**UserInfoDto**](UserInfoDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

