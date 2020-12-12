# AliasControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](AliasControllerAPI.md#createalias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**deleteAlias**](AliasControllerAPI.md#deletealias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**getAlias**](AliasControllerAPI.md#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliases**](AliasControllerAPI.md#getaliases) | **GET** /aliases | Get all email aliases you have created
[**updateAlias**](AliasControllerAPI.md#updatealias) | **PUT** /aliases/{aliasId} | Update an email alias


# **createAlias**
```swift
    open class func createAlias(createAliasOptions: CreateAliasOptions, completion: @escaping (_ data: Alias?, _ error: Error?) -> Void)
```

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createAliasOptions = CreateAliasOptions(emailAddress: "emailAddress_example", inboxId: 123, name: "name_example", useThreads: false) // CreateAliasOptions | createAliasOptions

// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
AliasControllerAPI.createAlias(createAliasOptions: createAliasOptions) { (response, error) in
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
 **createAliasOptions** | [**CreateAliasOptions**](CreateAliasOptions.md) | createAliasOptions | 

### Return type

[**Alias**](Alias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlias**
```swift
    open class func deleteAlias(aliasId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an email alias

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | aliasId

// Delete an email alias
AliasControllerAPI.deleteAlias(aliasId: aliasId) { (response, error) in
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
 **aliasId** | [**UUID**](.md) | aliasId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlias**
```swift
    open class func getAlias(aliasId: UUID, completion: @escaping (_ data: AliasDto?, _ error: Error?) -> Void)
```

Get an email alias

Get an email alias by ID

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | aliasId

// Get an email alias
AliasControllerAPI.getAlias(aliasId: aliasId) { (response, error) in
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
 **aliasId** | [**UUID**](.md) | aliasId | 

### Return type

[**AliasDto**](AliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAliases**
```swift
    open class func getAliases(page: Int? = nil, size: Int? = nil, sort: Sort_getAliases? = nil, completion: @escaping (_ data: PageAlias?, _ error: Error?) -> Void)
```

Get all email aliases you have created

Get all email aliases in paginated form

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in alias list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in alias list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all email aliases you have created
AliasControllerAPI.getAliases(page: page, size: size, sort: sort) { (response, error) in
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
 **page** | **Int** | Optional page index in alias list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageAlias**](PageAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAlias**
```swift
    open class func updateAlias(aliasId: UUID, updateAliasOptions: UpdateAliasOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an email alias

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | aliasId
let updateAliasOptions = UpdateAliasOptions(name: "name_example") // UpdateAliasOptions | updateAliasOptions

// Update an email alias
AliasControllerAPI.updateAlias(aliasId: aliasId, updateAliasOptions: updateAliasOptions) { (response, error) in
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
 **aliasId** | [**UUID**](.md) | aliasId | 
 **updateAliasOptions** | [**UpdateAliasOptions**](UpdateAliasOptions.md) | updateAliasOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

