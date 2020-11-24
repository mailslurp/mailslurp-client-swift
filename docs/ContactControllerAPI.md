# ContactControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](ContactControllerAPI.md#createcontact) | **POST** /contacts | Create a contact
[**deleteContact**](ContactControllerAPI.md#deletecontact) | **DELETE** /contacts/{contactId} | Delete contact
[**getAllContacts**](ContactControllerAPI.md#getallcontacts) | **GET** /contacts/paginated | Get all contacts
[**getContact**](ContactControllerAPI.md#getcontact) | **GET** /contacts/{contactId} | Get contact
[**getContacts**](ContactControllerAPI.md#getcontacts) | **GET** /contacts | Get all contacts


# **createContact**
```swift
    open class func createContact(createContactOptions: CreateContactOptions, completion: @escaping (_ data: ContactDto?, _ error: Error?) -> Void)
```

Create a contact

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createContactOptions = CreateContactOptions(emailAddresses: ["emailAddresses_example"], firstName: "firstName_example", groupId: 123, metaData: 123, optOut: false, tags: ["tags_example"], lastName: "lastName_example", company: "company_example") // CreateContactOptions | createContactOptions

// Create a contact
ContactControllerAPI.createContact(createContactOptions: createContactOptions) { (response, error) in
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
 **createContactOptions** | [**CreateContactOptions**](CreateContactOptions.md) | createContactOptions | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
```swift
    open class func deleteContact(contactId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete contact

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let contactId = 987 // UUID | contactId

// Delete contact
ContactControllerAPI.deleteContact(contactId: contactId) { (response, error) in
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
 **contactId** | [**UUID**](.md) | contactId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllContacts**
```swift
    open class func getAllContacts(page: Int? = nil, size: Int? = nil, sort: Sort_getAllContacts? = nil, completion: @escaping (_ data: PageContactProjection?, _ error: Error?) -> Void)
```

Get all contacts

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in inbox list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all contacts
ContactControllerAPI.getAllContacts(page: page, size: size, sort: sort) { (response, error) in
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
 **page** | **Int** | Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageContactProjection**](PageContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContact**
```swift
    open class func getContact(contactId: UUID, completion: @escaping (_ data: ContactDto?, _ error: Error?) -> Void)
```

Get contact

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let contactId = 987 // UUID | contactId

// Get contact
ContactControllerAPI.getContact(contactId: contactId) { (response, error) in
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
 **contactId** | [**UUID**](.md) | contactId | 

### Return type

[**ContactDto**](ContactDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContacts**
```swift
    open class func getContacts(completion: @escaping (_ data: [ContactProjection]?, _ error: Error?) -> Void)
```

Get all contacts

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get all contacts
ContactControllerAPI.getContacts() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[ContactProjection]**](ContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

