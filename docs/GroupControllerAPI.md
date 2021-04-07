# GroupControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContactsToGroup**](GroupControllerAPI.md#addcontactstogroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**createGroup**](GroupControllerAPI.md#creategroup) | **POST** /groups | Create a group
[**deleteGroup**](GroupControllerAPI.md#deletegroup) | **DELETE** /groups/{groupId} | Delete group
[**getAllGroups**](GroupControllerAPI.md#getallgroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**getGroup**](GroupControllerAPI.md#getgroup) | **GET** /groups/{groupId} | Get group
[**getGroupWithContacts**](GroupControllerAPI.md#getgroupwithcontacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**getGroupWithContactsPaginated**](GroupControllerAPI.md#getgroupwithcontactspaginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
[**getGroups**](GroupControllerAPI.md#getgroups) | **GET** /groups | Get all groups
[**removeContactsFromGroup**](GroupControllerAPI.md#removecontactsfromgroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


# **addContactsToGroup**
```swift
    open class func addContactsToGroup(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts, completion: @escaping (_ data: GroupContactsDto?, _ error: Error?) -> Void)
```

Add contacts to a group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | groupId
let updateGroupContactsOption = UpdateGroupContacts(contactIds: [123]) // UpdateGroupContacts | updateGroupContactsOption

// Add contacts to a group
GroupControllerAPI.addContactsToGroup(groupId: groupId, updateGroupContactsOption: updateGroupContactsOption) { (response, error) in
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
 **groupId** | [**UUID**](.md) | groupId | 
 **updateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts.md) | updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
```swift
    open class func createGroup(createGroupOptions: CreateGroupOptions, completion: @escaping (_ data: GroupDto?, _ error: Error?) -> Void)
```

Create a group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createGroupOptions = CreateGroupOptions(name: "name_example", _description: "_description_example") // CreateGroupOptions | createGroupOptions

// Create a group
GroupControllerAPI.createGroup(createGroupOptions: createGroupOptions) { (response, error) in
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
 **createGroupOptions** | [**CreateGroupOptions**](CreateGroupOptions.md) | createGroupOptions | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
```swift
    open class func deleteGroup(groupId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | groupId

// Delete group
GroupControllerAPI.deleteGroup(groupId: groupId) { (response, error) in
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
 **groupId** | [**UUID**](.md) | groupId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllGroups**
```swift
    open class func getAllGroups(page: Int? = nil, size: Int? = nil, sort: Sort_getAllGroups? = nil, completion: @escaping (_ data: PageGroupProjection?, _ error: Error?) -> Void)
```

Get all Contact Groups in paginated format

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in inbox list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all Contact Groups in paginated format
GroupControllerAPI.getAllGroups(page: page, size: size, sort: sort) { (response, error) in
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

[**PageGroupProjection**](PageGroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
```swift
    open class func getGroup(groupId: UUID, completion: @escaping (_ data: GroupDto?, _ error: Error?) -> Void)
```

Get group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | groupId

// Get group
GroupControllerAPI.getGroup(groupId: groupId) { (response, error) in
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
 **groupId** | [**UUID**](.md) | groupId | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupWithContacts**
```swift
    open class func getGroupWithContacts(groupId: UUID, completion: @escaping (_ data: GroupContactsDto?, _ error: Error?) -> Void)
```

Get group and contacts belonging to it

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | groupId

// Get group and contacts belonging to it
GroupControllerAPI.getGroupWithContacts(groupId: groupId) { (response, error) in
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
 **groupId** | [**UUID**](.md) | groupId | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupWithContactsPaginated**
```swift
    open class func getGroupWithContactsPaginated(groupId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getGroupWithContactsPaginated? = nil, completion: @escaping (_ data: PageContactProjection?, _ error: Error?) -> Void)
```

Get group and paginated contacts belonging to it

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | groupId
let page = 987 // Int | Optional page index in group contact pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in group contact pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get group and paginated contacts belonging to it
GroupControllerAPI.getGroupWithContactsPaginated(groupId: groupId, page: page, size: size, sort: sort) { (response, error) in
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
 **groupId** | [**UUID**](.md) | groupId | 
 **page** | **Int** | Optional page index in group contact pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in group contact pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageContactProjection**](PageContactProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroups**
```swift
    open class func getGroups(completion: @escaping (_ data: [GroupProjection]?, _ error: Error?) -> Void)
```

Get all groups

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get all groups
GroupControllerAPI.getGroups() { (response, error) in
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

[**[GroupProjection]**](GroupProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeContactsFromGroup**
```swift
    open class func removeContactsFromGroup(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts, completion: @escaping (_ data: GroupContactsDto?, _ error: Error?) -> Void)
```

Remove contacts from a group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | groupId
let updateGroupContactsOption = UpdateGroupContacts(contactIds: [123]) // UpdateGroupContacts | updateGroupContactsOption

// Remove contacts from a group
GroupControllerAPI.removeContactsFromGroup(groupId: groupId, updateGroupContactsOption: updateGroupContactsOption) { (response, error) in
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
 **groupId** | [**UUID**](.md) | groupId | 
 **updateGroupContactsOption** | [**UpdateGroupContacts**](UpdateGroupContacts.md) | updateGroupContactsOption | 

### Return type

[**GroupContactsDto**](GroupContactsDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

