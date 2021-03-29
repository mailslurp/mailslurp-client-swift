# BulkActionsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateInboxes**](BulkActionsControllerAPI.md#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulkDeleteInboxes**](BulkActionsControllerAPI.md#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulkSendEmails**](BulkActionsControllerAPI.md#bulksendemails) | **POST** /bulk/send | Bulk Send Emails


# **bulkCreateInboxes**
```swift
    open class func bulkCreateInboxes(count: Int, completion: @escaping (_ data: [Inbox]?, _ error: Error?) -> Void)
```

Bulk create Inboxes (email addresses)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let count = 987 // Int | Number of inboxes to be created in bulk

// Bulk create Inboxes (email addresses)
BulkActionsControllerAPI.bulkCreateInboxes(count: count) { (response, error) in
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
 **count** | **Int** | Number of inboxes to be created in bulk | 

### Return type

[**[Inbox]**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkDeleteInboxes**
```swift
    open class func bulkDeleteInboxes(ids: [UUID], completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Bulk Delete Inboxes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let ids = [123] // [UUID] | ids

// Bulk Delete Inboxes
BulkActionsControllerAPI.bulkDeleteInboxes(ids: ids) { (response, error) in
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
 **ids** | [**[UUID]**](UUID.md) | ids | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendEmails**
```swift
    open class func bulkSendEmails(bulkSendEmailOptions: BulkSendEmailOptions, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Bulk Send Emails

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let bulkSendEmailOptions = BulkSendEmailOptions(inboxIds: [123], sendEmailOptions: SendEmailOptions(attachments: ["attachments_example"], bcc: ["bcc_example"], body: "body_example", cc: ["cc_example"], charset: "charset_example", from: "from_example", isHTML: false, replyTo: "replyTo_example", sendStrategy: "sendStrategy_example", subject: "subject_example", template: 123, templateVariables: 123, to: ["to_example"], toContacts: [123], toGroup: 123)) // BulkSendEmailOptions | bulkSendEmailOptions

// Bulk Send Emails
BulkActionsControllerAPI.bulkSendEmails(bulkSendEmailOptions: bulkSendEmailOptions) { (response, error) in
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
 **bulkSendEmailOptions** | [**BulkSendEmailOptions**](BulkSendEmailOptions.md) | bulkSendEmailOptions | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

