# WebhookControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhookControllerAPI#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**deleteWebhook**](WebhookControllerAPI#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**getAllWebhookResults**](WebhookControllerAPI#getallwebhookresults) | **GET** /webhooks/results | Get results for all webhooks
[**getAllWebhooks**](WebhookControllerAPI#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getInboxWebhooksPaginated**](WebhookControllerAPI#getinboxwebhookspaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**getTestWebhookPayload**](WebhookControllerAPI#gettestwebhookpayload) | **GET** /webhooks/test | Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
[**getTestWebhookPayloadEmailOpened**](WebhookControllerAPI#gettestwebhookpayloademailopened) | **GET** /webhooks/test/email-opened-payload | Get webhook test payload for email opened event
[**getTestWebhookPayloadNewAttachment**](WebhookControllerAPI#gettestwebhookpayloadnewattachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**getTestWebhookPayloadNewContact**](WebhookControllerAPI#gettestwebhookpayloadnewcontact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**getTestWebhookPayloadNewEmail**](WebhookControllerAPI#gettestwebhookpayloadnewemail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**getWebhook**](WebhookControllerAPI#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**getWebhookResult**](WebhookControllerAPI#getwebhookresult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**getWebhookResults**](WebhookControllerAPI#getwebhookresults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**getWebhooks**](WebhookControllerAPI#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**sendTestData**](WebhookControllerAPI#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data


# **createWebhook**
```swift
    open class func createWebhook( inboxId: UUID,  webhookOptions: CreateWebhookOptions) -> Promise<WebhookDto>
```

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | inboxId
let webhookOptions = CreateWebhookOptions(basicAuth: BasicAuthOptions(username: "username_example", password: "password_example"), eventName: "eventName_example", name: "name_example", url: "url_example") // CreateWebhookOptions | webhookOptions

// Attach a WebHook URL to an inbox
WebhookControllerAPI.createWebhook(inboxId: inboxId, webhookOptions: webhookOptions).then {
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
 **webhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions) | webhookOptions | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteWebhook**
```swift
    open class func deleteWebhook( inboxId: UUID,  webhookId: UUID) -> Promise<Void>
```

Delete and disable a Webhook for an Inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | inboxId
let webhookId = 987 // UUID | webhookId

// Delete and disable a Webhook for an Inbox
WebhookControllerAPI.deleteWebhook(inboxId: inboxId, webhookId: webhookId).then {
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
 **webhookId** | [**UUID**]() | webhookId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookResults**
```swift
    open class func getAllWebhookResults( page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getAllWebhookResults? = nil) -> Promise<PageWebhookResult>
```

Get results for all webhooks

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get results for all webhooks
WebhookControllerAPI.getAllWebhookResults(page: page, searchFilter: searchFilter, size: size, sort: sort).then {
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
 **searchFilter** | **String** | Optional search filter | [optional] 
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhooks**
```swift
    open class func getAllWebhooks( page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getAllWebhooks? = nil) -> Promise<PageWebhookProjection>
```

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// List Webhooks Paginated
WebhookControllerAPI.getAllWebhooks(page: page, searchFilter: searchFilter, size: size, sort: sort).then {
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
 **searchFilter** | **String** | Optional search filter | [optional] 
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxWebhooksPaginated**
```swift
    open class func getInboxWebhooksPaginated( inboxId: UUID,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getInboxWebhooksPaginated? = nil) -> Promise<PageWebhookProjection>
```

Get paginated webhooks for an Inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | inboxId
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get paginated webhooks for an Inbox
WebhookControllerAPI.getInboxWebhooksPaginated(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort).then {
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
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayload**
```swift
    open class func getTestWebhookPayload( eventName: EventName_getTestWebhookPayload? = nil) -> Promise<AbstractWebhookPayload>
```

Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let eventName = "eventName_example" // String | eventName (optional)

// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
WebhookControllerAPI.getTestWebhookPayload(eventName: eventName).then {
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
 **eventName** | **String** | eventName | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadEmailOpened**
```swift
    open class func getTestWebhookPayloadEmailOpened() -> Promise<WebhookEmailOpenedPayload>
```

Get webhook test payload for email opened event

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for email opened event
WebhookControllerAPI.getTestWebhookPayloadEmailOpened().then {
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

[**WebhookEmailOpenedPayload**](WebhookEmailOpenedPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewAttachment**
```swift
    open class func getTestWebhookPayloadNewAttachment() -> Promise<WebhookNewAttachmentPayload>
```

Get webhook test payload for new attachment event

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for new attachment event
WebhookControllerAPI.getTestWebhookPayloadNewAttachment().then {
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

[**WebhookNewAttachmentPayload**](WebhookNewAttachmentPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewContact**
```swift
    open class func getTestWebhookPayloadNewContact() -> Promise<WebhookNewContactPayload>
```

Get webhook test payload for new contact event

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for new contact event
WebhookControllerAPI.getTestWebhookPayloadNewContact().then {
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

[**WebhookNewContactPayload**](WebhookNewContactPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewEmail**
```swift
    open class func getTestWebhookPayloadNewEmail() -> Promise<WebhookNewEmailPayload>
```

Get webhook test payload for new email event

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for new email event
WebhookControllerAPI.getTestWebhookPayloadNewEmail().then {
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

[**WebhookNewEmailPayload**](WebhookNewEmailPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhook**
```swift
    open class func getWebhook( webhookId: UUID) -> Promise<WebhookDto>
```

Get a webhook for an Inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | webhookId

// Get a webhook for an Inbox
WebhookControllerAPI.getWebhook(webhookId: webhookId).then {
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
 **webhookId** | [**UUID**]() | webhookId | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResult**
```swift
    open class func getWebhookResult( webhookResultId: UUID) -> Promise<WebhookResultEntity>
```

Get a webhook result for a webhook

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookResultId = 987 // UUID | Webhook Result ID

// Get a webhook result for a webhook
WebhookControllerAPI.getWebhookResult(webhookResultId: webhookResultId).then {
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
 **webhookResultId** | [**UUID**]() | Webhook Result ID | 

### Return type

[**WebhookResultEntity**](WebhookResultEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResults**
```swift
    open class func getWebhookResults( webhookId: UUID,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getWebhookResults? = nil) -> Promise<PageWebhookResult>
```

Get a webhook results for a webhook

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | ID of webhook to get results for
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get a webhook results for a webhook
WebhookControllerAPI.getWebhookResults(webhookId: webhookId, page: page, searchFilter: searchFilter, size: size, sort: sort).then {
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
 **webhookId** | [**UUID**]() | ID of webhook to get results for | 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhooks**
```swift
    open class func getWebhooks( inboxId: UUID) -> Promise<[WebhookDto]>
```

Get all webhooks for an Inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | inboxId

// Get all webhooks for an Inbox
WebhookControllerAPI.getWebhooks(inboxId: inboxId).then {
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

[**[WebhookDto]**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestData**
```swift
    open class func sendTestData( webhookId: UUID) -> Promise<WebhookTestResult>
```

Send webhook test data

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | webhookId

// Send webhook test data
WebhookControllerAPI.sendTestData(webhookId: webhookId).then {
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
 **webhookId** | [**UUID**]() | webhookId | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

