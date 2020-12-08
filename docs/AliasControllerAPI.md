# AliasControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAlias**](AliasControllerAPI.md#createalias) | **POST** /aliases | Create an email alias
[**createAnonymousAlias**](AliasControllerAPI.md#createanonymousalias) | **POST** /aliases/anonymous | Create an anonymous email alias
[**deleteAlias**](AliasControllerAPI.md#deletealias) | **DELETE** /aliases/{aliasId} | Delete an owned alias
[**getAlias**](AliasControllerAPI.md#getalias) | **GET** /aliases/{aliasId} | Get an email alias
[**getAliases**](AliasControllerAPI.md#getaliases) | **GET** /aliases | Get all email aliases
[**updateAlias**](AliasControllerAPI.md#updatealias) | **PUT** /aliases/{aliasId} | Update an owned alias


# **createAlias**
```swift
    open class func createAlias(createOwnedAliasOptions: CreateOwnedAliasOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create an email alias

Create an email alias belonging to a user ID. To create anonymous aliases use the `createAnonymousAlias` method.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createOwnedAliasOptions = CreateOwnedAliasOptions(emailAddress: "emailAddress_example", inboxId: 123, name: "name_example", proxied: false) // CreateOwnedAliasOptions | createOwnedAliasOptions

// Create an email alias
AliasControllerAPI.createAlias(createOwnedAliasOptions: createOwnedAliasOptions) { (response, error) in
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
 **createOwnedAliasOptions** | [**CreateOwnedAliasOptions**](CreateOwnedAliasOptions.md) | createOwnedAliasOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAnonymousAlias**
```swift
    open class func createAnonymousAlias(createAnonymousAliasOptions: CreateAnonymousAliasOptions, completion: @escaping (_ data: Alias?, _ error: Error?) -> Void)
```

Create an anonymous email alias

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createAnonymousAliasOptions = CreateAnonymousAliasOptions(emailAddress: "emailAddress_example") // CreateAnonymousAliasOptions | createAnonymousAliasOptions

// Create an anonymous email alias
AliasControllerAPI.createAnonymousAlias(createAnonymousAliasOptions: createAnonymousAliasOptions) { (response, error) in
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
 **createAnonymousAliasOptions** | [**CreateAnonymousAliasOptions**](CreateAnonymousAliasOptions.md) | createAnonymousAliasOptions | 

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

Delete an owned alias

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | aliasId

// Delete an owned alias
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
    open class func getAlias(aliasId: UUID, completion: @escaping (_ data: Alias?, _ error: Error?) -> Void)
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

[**Alias**](Alias.md)

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

Get all email aliases

Get all email aliases in paginated form

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in alias list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in alias list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all email aliases
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
    open class func updateAlias(aliasId: UUID, createOwnedAliasOptions: CreateOwnedAliasOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update an owned alias

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aliasId = 987 // UUID | aliasId
let createOwnedAliasOptions = CreateOwnedAliasOptions(emailAddress: "emailAddress_example", inboxId: 123, name: "name_example", proxied: false) // CreateOwnedAliasOptions | createOwnedAliasOptions

// Update an owned alias
AliasControllerAPI.updateAlias(aliasId: aliasId, createOwnedAliasOptions: createOwnedAliasOptions) { (response, error) in
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
 **createOwnedAliasOptions** | [**CreateOwnedAliasOptions**](CreateOwnedAliasOptions.md) | createOwnedAliasOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

