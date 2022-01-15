# CommonActionsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](CommonActionsControllerAPI#createnewemailaddress) | **POST** /newEmailAddress | Create new random inbox
[**createRandomInbox**](CommonActionsControllerAPI#createrandominbox) | **POST** /createInbox | Create new random inbox
[**deleteEmailAddress**](CommonActionsControllerAPI#deleteemailaddress) | **DELETE** /deleteEmailAddress | Delete inbox email address by inbox id
[**emptyInbox**](CommonActionsControllerAPI#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](CommonActionsControllerAPI#sendemailsimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
```swift
    open class func createNewEmailAddress( allowTeamAccess: Bool? = nil,  useDomainPool: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  emailAddress: String? = nil,  inboxType: InboxType_createNewEmailAddress? = nil,  _description: String? = nil,  name: String? = nil,  tags: [String]? = nil,  favourite: Bool? = nil) -> Promise<InboxDto>
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let allowTeamAccess = true // Bool |  (optional)
let useDomainPool = true // Bool |  (optional)
let expiresAt = Date() // Date |  (optional)
let expiresIn = 987 // Int64 |  (optional)
let emailAddress = "emailAddress_example" // String |  (optional)
let inboxType = "inboxType_example" // String |  (optional)
let _description = "_description_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let tags = ["inner_example"] // [String] |  (optional)
let favourite = true // Bool |  (optional)

// Create new random inbox
CommonActionsControllerAPI.createNewEmailAddress(allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, _description: _description, name: name, tags: tags, favourite: favourite).then {
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
 **allowTeamAccess** | **Bool** |  | [optional] 
 **useDomainPool** | **Bool** |  | [optional] 
 **expiresAt** | **Date** |  | [optional] 
 **expiresIn** | **Int64** |  | [optional] 
 **emailAddress** | **String** |  | [optional] 
 **inboxType** | **String** |  | [optional] 
 **_description** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **tags** | [**[String]**](String) |  | [optional] 
 **favourite** | **Bool** |  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createRandomInbox**
```swift
    open class func createRandomInbox( allowTeamAccess: Bool? = nil,  useDomainPool: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  emailAddress: String? = nil,  inboxType: InboxType_createRandomInbox? = nil,  _description: String? = nil,  name: String? = nil,  tags: [String]? = nil,  favourite: Bool? = nil) -> Promise<InboxDto>
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let allowTeamAccess = true // Bool |  (optional)
let useDomainPool = true // Bool |  (optional)
let expiresAt = Date() // Date |  (optional)
let expiresIn = 987 // Int64 |  (optional)
let emailAddress = "emailAddress_example" // String |  (optional)
let inboxType = "inboxType_example" // String |  (optional)
let _description = "_description_example" // String |  (optional)
let name = "name_example" // String |  (optional)
let tags = ["inner_example"] // [String] |  (optional)
let favourite = true // Bool |  (optional)

// Create new random inbox
CommonActionsControllerAPI.createRandomInbox(allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, _description: _description, name: name, tags: tags, favourite: favourite).then {
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
 **allowTeamAccess** | **Bool** |  | [optional] 
 **useDomainPool** | **Bool** |  | [optional] 
 **expiresAt** | **Date** |  | [optional] 
 **expiresIn** | **Int64** |  | [optional] 
 **emailAddress** | **String** |  | [optional] 
 **inboxType** | **String** |  | [optional] 
 **_description** | **String** |  | [optional] 
 **name** | **String** |  | [optional] 
 **tags** | [**[String]**](String) |  | [optional] 
 **favourite** | **Bool** |  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteEmailAddress**
```swift
    open class func deleteEmailAddress( inboxId: UUID) -> Promise<Void>
```

Delete inbox email address by inbox id

Deletes inbox email address

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Delete inbox email address by inbox id
CommonActionsControllerAPI.deleteEmailAddress(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **emptyInbox**
```swift
    open class func emptyInbox( inboxId: UUID) -> Promise<Void>
```

Delete all emails in an inbox

Deletes all emails

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 

// Delete all emails in an inbox
CommonActionsControllerAPI.emptyInbox(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailSimple**
```swift
    open class func sendEmailSimple( simpleSendEmailOptions: SimpleSendEmailOptions) -> Promise<Void>
```

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let simpleSendEmailOptions = SimpleSendEmailOptions(senderId: 123, to: "to_example", body: "body_example", subject: "subject_example") // SimpleSendEmailOptions | 

// Send an email
CommonActionsControllerAPI.sendEmailSimple(simpleSendEmailOptions: simpleSendEmailOptions).then {
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
 **simpleSendEmailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

