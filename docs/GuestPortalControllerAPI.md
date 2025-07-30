# GuestPortalControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestPortal**](GuestPortalControllerAPI#createguestportal) | **POST** /guest-portal | Create a portal page for your customers or clients to log into email accounts and view emails.
[**createGuestPortalUser**](GuestPortalControllerAPI#createguestportaluser) | **POST** /guest-portal/{portalId}/user | Create a portal guest user
[**getAllGuestPortalUsers**](GuestPortalControllerAPI#getallguestportalusers) | **GET** /guest-portal/user | Get all guest users for portal
[**getGuestPortal**](GuestPortalControllerAPI#getguestportal) | **GET** /guest-portal/{portalId} | Get a client email portal
[**getGuestPortalUser**](GuestPortalControllerAPI#getguestportaluser) | **GET** /guest-portal/{portalId}/user/{guestId} | Get guest user for portal
[**getGuestPortalUserById**](GuestPortalControllerAPI#getguestportaluserbyid) | **GET** /guest-portal/user/{guestId} | Get guest user
[**getGuestPortalUsers**](GuestPortalControllerAPI#getguestportalusers) | **GET** /guest-portal/{portalId}/user | Get all guest users for portal
[**getGuestPortals**](GuestPortalControllerAPI#getguestportals) | **GET** /guest-portal | Get guest portals


# **createGuestPortal**
```swift
    open class func createGuestPortal( createPortalOptions: CreatePortalOptions) -> Promise<GuestPortalDto>
```

Create a portal page for your customers or clients to log into email accounts and view emails.

Create a guest login page for customers or clients to access assigned email addresses

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createPortalOptions = CreatePortalOptions(name: "name_example", domainId: 123, _description: "_description_example", linkHelp: "linkHelp_example") // CreatePortalOptions | 

// Create a portal page for your customers or clients to log into email accounts and view emails.
GuestPortalControllerAPI.createGuestPortal(createPortalOptions: createPortalOptions).then {
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
 **createPortalOptions** | [**CreatePortalOptions**](CreatePortalOptions) |  | 

### Return type

[**GuestPortalDto**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createGuestPortalUser**
```swift
    open class func createGuestPortalUser( portalId: UUID,  createPortalUserOptions: CreatePortalUserOptions) -> Promise<GuestPortalUserCreateDto>
```

Create a portal guest user

Add customer to portal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let portalId = 987 // UUID | 
let createPortalUserOptions = CreatePortalUserOptions(password: "password_example", name: "name_example", username: "username_example", skipInboxCreation: false, inboxId: 123, createInboxOptions: CreateInboxDto(emailAddress: "emailAddress_example", domainName: "domainName_example", domainId: 123, name: "name_example", _description: "_description_example", useDomainPool: false, tags: ["tags_example"], expiresAt: Date(), favourite: false, expiresIn: 123, allowTeamAccess: false, inboxType: "inboxType_example", virtualInbox: false, useShortAddress: false, _prefix: "_prefix_example")) // CreatePortalUserOptions | 

// Create a portal guest user
GuestPortalControllerAPI.createGuestPortalUser(portalId: portalId, createPortalUserOptions: createPortalUserOptions).then {
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
 **portalId** | **UUID** |  | 
 **createPortalUserOptions** | [**CreatePortalUserOptions**](CreatePortalUserOptions) |  | 

### Return type

[**GuestPortalUserCreateDto**](GuestPortalUserCreateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllGuestPortalUsers**
```swift
    open class func getAllGuestPortalUsers( portalId: UUID? = nil,  search: String? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllGuestPortalUsers? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageGuestPortalUsers>
```

Get all guest users for portal

Get all customers for a portal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let portalId = 987 // UUID | Optional portal ID (optional)
let search = "search_example" // String | Optional search term (optional)
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all guest users for portal
GuestPortalControllerAPI.getAllGuestPortalUsers(portalId: portalId, search: search, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **portalId** | **UUID** | Optional portal ID | [optional] 
 **search** | **String** | Optional search term | [optional] 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortal**
```swift
    open class func getGuestPortal( portalId: UUID) -> Promise<GuestPortalDto>
```

Get a client email portal

Fetch a customer guest portal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let portalId = 987 // UUID | 

// Get a client email portal
GuestPortalControllerAPI.getGuestPortal(portalId: portalId).then {
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
 **portalId** | **UUID** |  | 

### Return type

[**GuestPortalDto**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUser**
```swift
    open class func getGuestPortalUser( portalId: UUID,  guestId: UUID) -> Promise<GuestPortalUserDto>
```

Get guest user for portal

Get customer for portal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let portalId = 987 // UUID | 
let guestId = 987 // UUID | 

// Get guest user for portal
GuestPortalControllerAPI.getGuestPortalUser(portalId: portalId, guestId: guestId).then {
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
 **portalId** | **UUID** |  | 
 **guestId** | **UUID** |  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUserById**
```swift
    open class func getGuestPortalUserById( guestId: UUID) -> Promise<GuestPortalUserDto>
```

Get guest user

Get customer by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let guestId = 987 // UUID | 

// Get guest user
GuestPortalControllerAPI.getGuestPortalUserById(guestId: guestId).then {
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
 **guestId** | **UUID** |  | 

### Return type

[**GuestPortalUserDto**](GuestPortalUserDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortalUsers**
```swift
    open class func getGuestPortalUsers( portalId: UUID,  search: String? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getGuestPortalUsers? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageGuestPortalUsers>
```

Get all guest users for portal

Get customers for a portal

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let portalId = 987 // UUID | 
let search = "search_example" // String | Optional search term (optional)
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// Get all guest users for portal
GuestPortalControllerAPI.getGuestPortalUsers(portalId: portalId, search: search, page: page, size: size, sort: sort, since: since, before: before).then {
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
 **portalId** | **UUID** |  | 
 **search** | **String** | Optional search term | [optional] 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageGuestPortalUsers**](PageGuestPortalUsers)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getGuestPortals**
```swift
    open class func getGuestPortals() -> Promise<[GuestPortalDto]>
```

Get guest portals

Get portals

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get guest portals
GuestPortalControllerAPI.getGuestPortals().then {
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

[**[GuestPortalDto]**](GuestPortalDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

