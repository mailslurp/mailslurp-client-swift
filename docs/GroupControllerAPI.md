# GroupControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addContactsToGroup**](GroupControllerAPI#addcontactstogroup) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
[**createGroup**](GroupControllerAPI#creategroup) | **POST** /groups | Create a group
[**deleteGroup**](GroupControllerAPI#deletegroup) | **DELETE** /groups/{groupId} | Delete group
[**getAllGroups**](GroupControllerAPI#getallgroups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
[**getGroup**](GroupControllerAPI#getgroup) | **GET** /groups/{groupId} | Get group
[**getGroupWithContacts**](GroupControllerAPI#getgroupwithcontacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
[**getGroupWithContactsPaginated**](GroupControllerAPI#getgroupwithcontactspaginated) | **GET** /groups/{groupId}/contacts-paginated | 
[**getGroups**](GroupControllerAPI#getgroups) | **GET** /groups | Get all groups
[**removeContactsFromGroup**](GroupControllerAPI#removecontactsfromgroup) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group


# **addContactsToGroup**
```swift
    open class func addContactsToGroup( groupId: UUID,  updateGroupContacts: UpdateGroupContacts) -> Promise<GroupContactsDto>
```

Add contacts to a group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | 
let updateGroupContacts = UpdateGroupContacts(contactIds: [123]) // UpdateGroupContacts | 

// Add contacts to a group
GroupControllerAPI.addContactsToGroup(groupId: groupId, updateGroupContacts: updateGroupContacts).then {
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
 **groupId** | [**UUID**]() |  | 
 **updateGroupContacts** | [**UpdateGroupContacts**](UpdateGroupContacts) |  | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createGroup**
```swift
    open class func createGroup( createGroupOptions: CreateGroupOptions) -> Promise<GroupDto>
```

Create a group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createGroupOptions = CreateGroupOptions(name: "name_example", _description: "_description_example") // CreateGroupOptions | 

// Create a group
GroupControllerAPI.createGroup(createGroupOptions: createGroupOptions).then {
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
 **createGroupOptions** | [**CreateGroupOptions**](CreateGroupOptions) |  | 

### Return type

[**GroupDto**](GroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteGroup**
```swift
    open class func deleteGroup( groupId: UUID) -> Promise<Void>
```

Delete group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | 

// Delete group
GroupControllerAPI.deleteGroup(groupId: groupId).then {
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
 **groupId** | [**UUID**]() |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllGroups**
```swift
    open class func getAllGroups( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllGroups? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageGroupProjection>
```

Get all Contact Groups in paginated format

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all Contact Groups in paginated format
GroupControllerAPI.getAllGroups(page: page, size: size, sort: sort, since: since, before: before).then {
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
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGroupProjection**](PageGroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroup**
```swift
    open class func getGroup( groupId: UUID) -> Promise<GroupDto>
```

Get group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | 

// Get group
GroupControllerAPI.getGroup(groupId: groupId).then {
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
 **groupId** | [**UUID**]() |  | 

### Return type

[**GroupDto**](GroupDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroupWithContacts**
```swift
    open class func getGroupWithContacts( groupId: UUID) -> Promise<GroupContactsDto>
```

Get group and contacts belonging to it

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | 

// Get group and contacts belonging to it
GroupControllerAPI.getGroupWithContacts(groupId: groupId).then {
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
 **groupId** | [**UUID**]() |  | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroupWithContactsPaginated**
```swift
    open class func getGroupWithContactsPaginated( groupId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getGroupWithContactsPaginated? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageContactProjection>
```



Get group and paginated contacts belonging to it

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | 
let page = 987 // Int | Optional page index in group contact pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in group contact pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

GroupControllerAPI.getGroupWithContactsPaginated(groupId: groupId, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **groupId** | [**UUID**]() |  | 
 **page** | **Int** | Optional page index in group contact pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in group contact pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageContactProjection**](PageContactProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGroups**
```swift
    open class func getGroups() -> Promise<[GroupProjection]>
```

Get all groups

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get all groups
GroupControllerAPI.getGroups().then {
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

[**[GroupProjection]**](GroupProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **removeContactsFromGroup**
```swift
    open class func removeContactsFromGroup( groupId: UUID,  updateGroupContacts: UpdateGroupContacts) -> Promise<GroupContactsDto>
```

Remove contacts from a group

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let groupId = 987 // UUID | 
let updateGroupContacts = UpdateGroupContacts(contactIds: [123]) // UpdateGroupContacts | 

// Remove contacts from a group
GroupControllerAPI.removeContactsFromGroup(groupId: groupId, updateGroupContacts: updateGroupContacts).then {
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
 **groupId** | [**UUID**]() |  | 
 **updateGroupContacts** | [**UpdateGroupContacts**](UpdateGroupContacts) |  | 

### Return type

[**GroupContactsDto**](GroupContactsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

