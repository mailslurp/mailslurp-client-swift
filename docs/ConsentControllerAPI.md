# ConsentControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkSendingConsentForEmailAddress**](ConsentControllerAPI#checksendingconsentforemailaddress) | **GET** /consent/opt-in/sending-consent | 
[**getOptInIdentities**](ConsentControllerAPI#getoptinidentities) | **GET** /consent/opt-in | 
[**revokeOptInConsentForEmailAddress**](ConsentControllerAPI#revokeoptinconsentforemailaddress) | **DELETE** /consent/opt-in | 
[**sendOptInConsentForEmailAddress**](ConsentControllerAPI#sendoptinconsentforemailaddress) | **POST** /consent/opt-in/send | Send a verification code to a user once they have explicitly submitted their email address


# **checkSendingConsentForEmailAddress**
```swift
    open class func checkSendingConsentForEmailAddress( emailAddress: String) -> Promise<OptInSendingConsentDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | Email address to check consent for

ConsentControllerAPI.checkSendingConsentForEmailAddress(emailAddress: emailAddress).then {
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
 **emailAddress** | **String** | Email address to check consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOptInIdentities**
```swift
    open class func getOptInIdentities( page: Int? = nil,  size: Int? = nil,  sort: Sort_getOptInIdentities? = nil) -> Promise<PageOptInIdentityProjection>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

ConsentControllerAPI.getOptInIdentities(page: page, size: size, sort: sort).then {
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
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageOptInIdentityProjection**](PageOptInIdentityProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **revokeOptInConsentForEmailAddress**
```swift
    open class func revokeOptInConsentForEmailAddress( emailAddress: String) -> Promise<OptInSendingConsentDto>
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailAddress = "emailAddress_example" // String | Email address to revoke consent for

ConsentControllerAPI.revokeOptInConsentForEmailAddress(emailAddress: emailAddress).then {
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
 **emailAddress** | **String** | Email address to revoke consent for | 

### Return type

[**OptInSendingConsentDto**](OptInSendingConsentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendOptInConsentForEmailAddress**
```swift
    open class func sendOptInConsentForEmailAddress( optInConsentOptions: OptInConsentOptions) -> Promise<OptInConsentSendResult>
```

Send a verification code to a user once they have explicitly submitted their email address

Send double-opt in consent for an email address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let optInConsentOptions = OptInConsentOptions(emailAddress: "emailAddress_example", companyName: "companyName_example", sendOptInOptions: SendOptInConsentEmailOptions(templateHtml: "templateHtml_example", subject: "subject_example", senderInbox: 123)) // OptInConsentOptions | 

// Send a verification code to a user once they have explicitly submitted their email address
ConsentControllerAPI.sendOptInConsentForEmailAddress(optInConsentOptions: optInConsentOptions).then {
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
 **optInConsentOptions** | [**OptInConsentOptions**](OptInConsentOptions) |  | 

### Return type

[**OptInConsentSendResult**](OptInConsentSendResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

