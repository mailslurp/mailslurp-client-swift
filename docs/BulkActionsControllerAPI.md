# BulkActionsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateInboxes**](BulkActionsControllerAPI#bulkcreateinboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulkDeleteInboxes**](BulkActionsControllerAPI#bulkdeleteinboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulkSendEmails**](BulkActionsControllerAPI#bulksendemails) | **POST** /bulk/send | Bulk Send Emails


# **bulkCreateInboxes**
```swift
    open class func bulkCreateInboxes( count: Int) -> Promise<[InboxDto]>
```

Bulk create Inboxes (email addresses)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let count = 987 // Int | Number of inboxes to be created in bulk

// Bulk create Inboxes (email addresses)
BulkActionsControllerAPI.bulkCreateInboxes(count: count).then {
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
 **count** | **Int** | Number of inboxes to be created in bulk | 

### Return type

[**[InboxDto]**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkDeleteInboxes**
```swift
    open class func bulkDeleteInboxes( requestBody: [UUID]) -> Promise<Void>
```

Bulk Delete Inboxes

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let requestBody = [123] // [UUID] | 

// Bulk Delete Inboxes
BulkActionsControllerAPI.bulkDeleteInboxes(requestBody: requestBody).then {
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
 **requestBody** | [**[UUID]**](UUID) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **bulkSendEmails**
```swift
    open class func bulkSendEmails( bulkSendEmailOptions: BulkSendEmailOptions) -> Promise<Void>
```

Bulk Send Emails

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let bulkSendEmailOptions = BulkSendEmailOptions(inboxIds: [123], sendEmailOptions: SendEmailOptions(toContacts: [123], toGroup: 123, to: ["to_example"], from: "from_example", cc: ["cc_example"], bcc: ["bcc_example"], subject: "subject_example", replyTo: "replyTo_example", body: "body_example", html: false, isHTML: false, charset: "charset_example", attachments: ["attachments_example"], templateVariables: "TODO", template: 123, sendStrategy: "sendStrategy_example", useInboxName: false, addTrackingPixel: false, filterBouncedRecipients: false, validateEmailAddresses: "validateEmailAddresses_example")) // BulkSendEmailOptions | 

// Bulk Send Emails
BulkActionsControllerAPI.bulkSendEmails(bulkSendEmailOptions: bulkSendEmailOptions).then {
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
 **bulkSendEmailOptions** | [**BulkSendEmailOptions**](BulkSendEmailOptions) |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

