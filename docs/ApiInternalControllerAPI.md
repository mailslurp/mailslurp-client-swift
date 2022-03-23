# ApiInternalControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSamlUserOrCreate**](ApiInternalControllerAPI#getsamluserorcreate) | **POST** /internal/saml/user | 


# **getSamlUserOrCreate**
```swift
    open class func getSamlUserOrCreate( key: String,  getOrCreateSamlUserOptions: GetOrCreateSamlUserOptions) -> Promise<UserDto>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let key = "key_example" // String | 
let getOrCreateSamlUserOptions = GetOrCreateSamlUserOptions(issuer: "issuer_example", nameId: "nameId_example", nameIdFormat: "nameIdFormat_example") // GetOrCreateSamlUserOptions | 

ApiInternalControllerAPI.getSamlUserOrCreate(key: key, getOrCreateSamlUserOptions: getOrCreateSamlUserOptions).then {
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
 **key** | **String** |  | 
 **getOrCreateSamlUserOptions** | [**GetOrCreateSamlUserOptions**](GetOrCreateSamlUserOptions) |  | 

### Return type

[**UserDto**](UserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

