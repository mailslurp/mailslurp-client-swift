# CommonActionsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](CommonActionsControllerAPI#createnewemailaddress) | **POST** /createInbox | Create new random inbox
[**createNewEmailAddress1**](CommonActionsControllerAPI#createnewemailaddress1) | **POST** /newEmailAddress | Create new random inbox
[**emptyInbox**](CommonActionsControllerAPI#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](CommonActionsControllerAPI#sendemailsimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
```swift
    open class func createNewEmailAddress( allowTeamAccess: Bool? = nil,  _description: String? = nil,  emailAddress: String? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  favourite: Bool? = nil,  inboxType: InboxType_createNewEmailAddress? = nil,  name: String? = nil,  tags: [String]? = nil,  useDomainPool: Bool? = nil) -> Promise<Inbox>
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let allowTeamAccess = true // Bool | allowTeamAccess (optional)
let _description = "_description_example" // String | description (optional)
let emailAddress = "emailAddress_example" // String | emailAddress (optional)
let expiresAt = Date() // Date | expiresAt (optional)
let expiresIn = 987 // Int64 | expiresIn (optional)
let favourite = true // Bool | favourite (optional)
let inboxType = "inboxType_example" // String | inboxType (optional)
let name = "name_example" // String | name (optional)
let tags = ["inner_example"] // [String] | tags (optional)
let useDomainPool = true // Bool | useDomainPool (optional)

// Create new random inbox
CommonActionsControllerAPI.createNewEmailAddress(allowTeamAccess: allowTeamAccess, _description: _description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, inboxType: inboxType, name: name, tags: tags, useDomainPool: useDomainPool).then {
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
 **allowTeamAccess** | **Bool** | allowTeamAccess | [optional] 
 **_description** | **String** | description | [optional] 
 **emailAddress** | **String** | emailAddress | [optional] 
 **expiresAt** | **Date** | expiresAt | [optional] 
 **expiresIn** | **Int64** | expiresIn | [optional] 
 **favourite** | **Bool** | favourite | [optional] 
 **inboxType** | **String** | inboxType | [optional] 
 **name** | **String** | name | [optional] 
 **tags** | [**[String]**](String) | tags | [optional] 
 **useDomainPool** | **Bool** | useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createNewEmailAddress1**
```swift
    open class func createNewEmailAddress1( allowTeamAccess: Bool? = nil,  _description: String? = nil,  emailAddress: String? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  favourite: Bool? = nil,  inboxType: InboxType_createNewEmailAddress1? = nil,  name: String? = nil,  tags: [String]? = nil,  useDomainPool: Bool? = nil) -> Promise<Inbox>
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let allowTeamAccess = true // Bool | allowTeamAccess (optional)
let _description = "_description_example" // String | description (optional)
let emailAddress = "emailAddress_example" // String | emailAddress (optional)
let expiresAt = Date() // Date | expiresAt (optional)
let expiresIn = 987 // Int64 | expiresIn (optional)
let favourite = true // Bool | favourite (optional)
let inboxType = "inboxType_example" // String | inboxType (optional)
let name = "name_example" // String | name (optional)
let tags = ["inner_example"] // [String] | tags (optional)
let useDomainPool = true // Bool | useDomainPool (optional)

// Create new random inbox
CommonActionsControllerAPI.createNewEmailAddress1(allowTeamAccess: allowTeamAccess, _description: _description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, inboxType: inboxType, name: name, tags: tags, useDomainPool: useDomainPool).then {
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
 **allowTeamAccess** | **Bool** | allowTeamAccess | [optional] 
 **_description** | **String** | description | [optional] 
 **emailAddress** | **String** | emailAddress | [optional] 
 **expiresAt** | **Date** | expiresAt | [optional] 
 **expiresIn** | **Int64** | expiresIn | [optional] 
 **favourite** | **Bool** | favourite | [optional] 
 **inboxType** | **String** | inboxType | [optional] 
 **name** | **String** | name | [optional] 
 **tags** | [**[String]**](String) | tags | [optional] 
 **useDomainPool** | **Bool** | useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

let inboxId = 987 // UUID | inboxId

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
 **inboxId** | [**UUID**]() | inboxId | 

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
    open class func sendEmailSimple( emailOptions: SimpleSendEmailOptions) -> Promise<Void>
```

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailOptions = SimpleSendEmailOptions(body: "body_example", senderId: 123, subject: "subject_example", to: "to_example") // SimpleSendEmailOptions | emailOptions

// Send an email
CommonActionsControllerAPI.sendEmailSimple(emailOptions: emailOptions).then {
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
 **emailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions) | emailOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

