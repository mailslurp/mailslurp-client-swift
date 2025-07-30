# OAuthConnectionAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthConnection**](OAuthConnectionAPI#createoauthconnection) | **POST** /oauth-connection | Create an OAuth connection
[**exchangeAuthorizationTokenAndCreateOrUpdateInbox**](OAuthConnectionAPI#exchangeauthorizationtokenandcreateorupdateinbox) | **POST** /oauth-connection/oauth-exchange/google | Exchange authorization code for access token and create inbox


# **createOAuthConnection**
```swift
    open class func createOAuthConnection( redirectBase: String,  oAuthConnectionType: OAuthConnectionType_createOAuthConnection,  emailAddress: String? = nil) -> Promise<CreateOAuthConnectionResult>
```

Create an OAuth connection

Configure an inbox for OAuth sync with MailSlurp

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let redirectBase = "redirectBase_example" // String | 
let oAuthConnectionType = "oAuthConnectionType_example" // String | 
let emailAddress = "emailAddress_example" // String |  (optional)

// Create an OAuth connection
OAuthConnectionAPI.createOAuthConnection(redirectBase: redirectBase, oAuthConnectionType: oAuthConnectionType, emailAddress: emailAddress).then {
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
 **redirectBase** | **String** |  | 
 **oAuthConnectionType** | **String** |  | 
 **emailAddress** | **String** |  | [optional] 

### Return type

[**CreateOAuthConnectionResult**](CreateOAuthConnectionResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exchangeAuthorizationTokenAndCreateOrUpdateInbox**
```swift
    open class func exchangeAuthorizationTokenAndCreateOrUpdateInbox( authorizationCode: String,  redirectUri: String) -> Promise<CreateOAuthExchangeResult>
```

Exchange authorization code for access token and create inbox

Exchange an OAuth code for an access token and create an inbox connection in MailSlurp

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let authorizationCode = "authorizationCode_example" // String | 
let redirectUri = "redirectUri_example" // String | 

// Exchange authorization code for access token and create inbox
OAuthConnectionAPI.exchangeAuthorizationTokenAndCreateOrUpdateInbox(authorizationCode: authorizationCode, redirectUri: redirectUri).then {
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
 **authorizationCode** | **String** |  | 
 **redirectUri** | **String** |  | 

### Return type

[**CreateOAuthExchangeResult**](CreateOAuthExchangeResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

