# CommonActionsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewEmailAddress**](CommonActionsControllerAPI.md#createnewemailaddress) | **POST** /createInbox | Create new random inbox
[**createNewEmailAddress1**](CommonActionsControllerAPI.md#createnewemailaddress1) | **POST** /newEmailAddress | Create new random inbox
[**emptyInbox**](CommonActionsControllerAPI.md#emptyinbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**sendEmailSimple**](CommonActionsControllerAPI.md#sendemailsimple) | **POST** /sendEmail | Send an email


# **createNewEmailAddress**
```swift
    open class func createNewEmailAddress(allowTeamAccess: Bool? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, useDomainPool: Bool? = nil, completion: @escaping (_ data: Inbox?, _ error: Error?) -> Void)
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let allowTeamAccess = true // Bool | allowTeamAccess (optional)
let expiresAt = Date() // Date | expiresAt (optional)
let expiresIn = 987 // Int64 | expiresIn (optional)
let useDomainPool = true // Bool | useDomainPool (optional)

// Create new random inbox
CommonActionsControllerAPI.createNewEmailAddress(allowTeamAccess: allowTeamAccess, expiresAt: expiresAt, expiresIn: expiresIn, useDomainPool: useDomainPool) { (response, error) in
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
 **allowTeamAccess** | **Bool** | allowTeamAccess | [optional] 
 **expiresAt** | **Date** | expiresAt | [optional] 
 **expiresIn** | **Int64** | expiresIn | [optional] 
 **useDomainPool** | **Bool** | useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNewEmailAddress1**
```swift
    open class func createNewEmailAddress1(allowTeamAccess: Bool? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, useDomainPool: Bool? = nil, completion: @escaping (_ data: Inbox?, _ error: Error?) -> Void)
```

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let allowTeamAccess = true // Bool | allowTeamAccess (optional)
let expiresAt = Date() // Date | expiresAt (optional)
let expiresIn = 987 // Int64 | expiresIn (optional)
let useDomainPool = true // Bool | useDomainPool (optional)

// Create new random inbox
CommonActionsControllerAPI.createNewEmailAddress1(allowTeamAccess: allowTeamAccess, expiresAt: expiresAt, expiresIn: expiresIn, useDomainPool: useDomainPool) { (response, error) in
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
 **allowTeamAccess** | **Bool** | allowTeamAccess | [optional] 
 **expiresAt** | **Date** | expiresAt | [optional] 
 **expiresIn** | **Int64** | expiresIn | [optional] 
 **useDomainPool** | **Bool** | useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emptyInbox**
```swift
    open class func emptyInbox(inboxId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete all emails in an inbox

Deletes all emails

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | inboxId

// Delete all emails in an inbox
CommonActionsControllerAPI.emptyInbox(inboxId: inboxId) { (response, error) in
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
 **inboxId** | [**UUID**](.md) | inboxId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmailSimple**
```swift
    open class func sendEmailSimple(emailOptions: SimpleSendEmailOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailOptions = SimpleSendEmailOptions(body: "body_example", senderId: 123, subject: "subject_example", to: "to_example") // SimpleSendEmailOptions | emailOptions

// Send an email
CommonActionsControllerAPI.sendEmailSimple(emailOptions: emailOptions) { (response, error) in
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
 **emailOptions** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions.md) | emailOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

