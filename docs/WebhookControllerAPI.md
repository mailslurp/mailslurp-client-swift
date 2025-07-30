# WebhookControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountWebhook**](WebhookControllerAPI#createaccountwebhook) | **POST** /webhooks | Attach a WebHook URL to an inbox
[**createWebhook**](WebhookControllerAPI#createwebhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**createWebhookForPhoneNumber**](WebhookControllerAPI#createwebhookforphonenumber) | **POST** /phone/numbers/{phoneNumberId}/webhooks | Attach a WebHook URL to a phone number
[**deleteAllWebhooks**](WebhookControllerAPI#deleteallwebhooks) | **DELETE** /webhooks | Delete all webhooks
[**deleteWebhook**](WebhookControllerAPI#deletewebhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**deleteWebhookById**](WebhookControllerAPI#deletewebhookbyid) | **DELETE** /webhooks/{webhookId} | Delete a webhook
[**getAllAccountWebhooks**](WebhookControllerAPI#getallaccountwebhooks) | **GET** /webhooks/account/paginated | List account webhooks Paginated
[**getAllWebhookEndpoints**](WebhookControllerAPI#getallwebhookendpoints) | **GET** /webhooks/endpoints | List Webhooks endpoints Paginated
[**getAllWebhookResults**](WebhookControllerAPI#getallwebhookresults) | **GET** /webhooks/results | Get results for all webhooks
[**getAllWebhooks**](WebhookControllerAPI#getallwebhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**getInboxWebhooksPaginated**](WebhookControllerAPI#getinboxwebhookspaginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**getJsonSchemaForWebhookEvent**](WebhookControllerAPI#getjsonschemaforwebhookevent) | **POST** /webhooks/schema | 
[**getJsonSchemaForWebhookPayload**](WebhookControllerAPI#getjsonschemaforwebhookpayload) | **POST** /webhooks/{webhookId}/schema | 
[**getPhoneNumberWebhooksPaginated**](WebhookControllerAPI#getphonenumberwebhookspaginated) | **GET** /phone/numbers/{phoneId}/webhooks/paginated | Get paginated webhooks for a phone number
[**getTestWebhookPayload**](WebhookControllerAPI#gettestwebhookpayload) | **GET** /webhooks/test | 
[**getTestWebhookPayloadBounce**](WebhookControllerAPI#gettestwebhookpayloadbounce) | **GET** /webhooks/test/email-bounce-payload | 
[**getTestWebhookPayloadBounceRecipient**](WebhookControllerAPI#gettestwebhookpayloadbouncerecipient) | **GET** /webhooks/test/email-bounce-recipient-payload | 
[**getTestWebhookPayloadDeliveryStatus**](WebhookControllerAPI#gettestwebhookpayloaddeliverystatus) | **GET** /webhooks/test/delivery-status-payload | Get webhook test payload for delivery status event
[**getTestWebhookPayloadEmailOpened**](WebhookControllerAPI#gettestwebhookpayloademailopened) | **GET** /webhooks/test/email-opened-payload | 
[**getTestWebhookPayloadEmailRead**](WebhookControllerAPI#gettestwebhookpayloademailread) | **GET** /webhooks/test/email-read-payload | 
[**getTestWebhookPayloadForWebhook**](WebhookControllerAPI#gettestwebhookpayloadforwebhook) | **POST** /webhooks/{webhookId}/example | 
[**getTestWebhookPayloadNewAITransformResult**](WebhookControllerAPI#gettestwebhookpayloadnewaitransformresult) | **GET** /webhooks/test/new-ai-transform-result-payload | Get webhook test payload for new ai transform result event
[**getTestWebhookPayloadNewAttachment**](WebhookControllerAPI#gettestwebhookpayloadnewattachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**getTestWebhookPayloadNewContact**](WebhookControllerAPI#gettestwebhookpayloadnewcontact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**getTestWebhookPayloadNewEmail**](WebhookControllerAPI#gettestwebhookpayloadnewemail) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**getTestWebhookPayloadNewSms**](WebhookControllerAPI#gettestwebhookpayloadnewsms) | **GET** /webhooks/test/new-sms-payload | Get webhook test payload for new sms event
[**getWebhook**](WebhookControllerAPI#getwebhook) | **GET** /webhooks/{webhookId} | Get a webhook
[**getWebhookResult**](WebhookControllerAPI#getwebhookresult) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**getWebhookResults**](WebhookControllerAPI#getwebhookresults) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**getWebhookResultsCount**](WebhookControllerAPI#getwebhookresultscount) | **GET** /webhooks/{webhookId}/results/count | Get a webhook results count for a webhook
[**getWebhookResultsUnseenErrorCount**](WebhookControllerAPI#getwebhookresultsunseenerrorcount) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**getWebhooks**](WebhookControllerAPI#getwebhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redriveAllWebhookResults**](WebhookControllerAPI#redriveallwebhookresults) | **POST** /webhooks/results/redrive | Redrive all webhook results that have failed status
[**redriveWebhookResult**](WebhookControllerAPI#redrivewebhookresult) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**sendTestData**](WebhookControllerAPI#sendtestdata) | **POST** /webhooks/{webhookId}/test | Send webhook test data
[**updateWebhook**](WebhookControllerAPI#updatewebhook) | **PATCH** /webhooks/{webhookId} | Update a webhook
[**updateWebhookHeaders**](WebhookControllerAPI#updatewebhookheaders) | **PUT** /webhooks/{webhookId}/headers | Update a webhook request headers
[**verifyWebhookSignature**](WebhookControllerAPI#verifywebhooksignature) | **POST** /webhooks/verify | Verify a webhook payload signature
[**waitForWebhookResults**](WebhookControllerAPI#waitforwebhookresults) | **GET** /webhooks/{webhookId}/wait | Wait for webhook results for a webhook


# **createAccountWebhook**
```swift
    open class func createAccountWebhook( createWebhookOptions: CreateWebhookOptions) -> Promise<WebhookDto>
```

Attach a WebHook URL to an inbox

Get notified of account level events such as bounce and bounce recipient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createWebhookOptions = CreateWebhookOptions(url: "url_example", basicAuth: BasicAuthOptions(username: "username_example", password: "password_example"), name: "name_example", eventName: "eventName_example", includeHeaders: WebhookHeaders(headers: [WebhookHeaderNameValue(name: "name_example", value: "value_example")]), requestBodyTemplate: "requestBodyTemplate_example", aiTransformId: 123, useStaticIpRange: false, ignoreInsecureSslCertificates: false, tags: ["tags_example"]) // CreateWebhookOptions | 

// Attach a WebHook URL to an inbox
WebhookControllerAPI.createAccountWebhook(createWebhookOptions: createWebhookOptions).then {
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
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions) |  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhook**
```swift
    open class func createWebhook( inboxId: UUID,  createWebhookOptions: CreateWebhookOptions) -> Promise<WebhookDto>
```

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let createWebhookOptions = CreateWebhookOptions(url: "url_example", basicAuth: BasicAuthOptions(username: "username_example", password: "password_example"), name: "name_example", eventName: "eventName_example", includeHeaders: WebhookHeaders(headers: [WebhookHeaderNameValue(name: "name_example", value: "value_example")]), requestBodyTemplate: "requestBodyTemplate_example", aiTransformId: 123, useStaticIpRange: false, ignoreInsecureSslCertificates: false, tags: ["tags_example"]) // CreateWebhookOptions | 

// Attach a WebHook URL to an inbox
WebhookControllerAPI.createWebhook(inboxId: inboxId, createWebhookOptions: createWebhookOptions).then {
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
 **inboxId** | **UUID** |  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions) |  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createWebhookForPhoneNumber**
```swift
    open class func createWebhookForPhoneNumber( phoneNumberId: UUID,  createWebhookOptions: CreateWebhookOptions) -> Promise<WebhookDto>
```

Attach a WebHook URL to a phone number

Get notified whenever a phone number receives an SMS via a WebHook URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneNumberId = 987 // UUID | 
let createWebhookOptions = CreateWebhookOptions(url: "url_example", basicAuth: BasicAuthOptions(username: "username_example", password: "password_example"), name: "name_example", eventName: "eventName_example", includeHeaders: WebhookHeaders(headers: [WebhookHeaderNameValue(name: "name_example", value: "value_example")]), requestBodyTemplate: "requestBodyTemplate_example", aiTransformId: 123, useStaticIpRange: false, ignoreInsecureSslCertificates: false, tags: ["tags_example"]) // CreateWebhookOptions | 

// Attach a WebHook URL to a phone number
WebhookControllerAPI.createWebhookForPhoneNumber(phoneNumberId: phoneNumberId, createWebhookOptions: createWebhookOptions).then {
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
 **phoneNumberId** | **UUID** |  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions) |  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllWebhooks**
```swift
    open class func deleteAllWebhooks( before: Date? = nil) -> Promise<Void>
```

Delete all webhooks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | before (optional)

// Delete all webhooks
WebhookControllerAPI.deleteAllWebhooks(before: before).then {
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
 **before** | **Date** | before | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

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

let inboxId = 987 // UUID | 
let webhookId = 987 // UUID | 

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
 **inboxId** | **UUID** |  | 
 **webhookId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteWebhookById**
```swift
    open class func deleteWebhookById( webhookId: UUID) -> Promise<Void>
```

Delete a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | 

// Delete a webhook
WebhookControllerAPI.deleteWebhookById(webhookId: webhookId).then {
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
 **webhookId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllAccountWebhooks**
```swift
    open class func getAllAccountWebhooks( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllAccountWebhooks? = nil,  since: Date? = nil,  before: Date? = nil,  eventType: EventType_getAllAccountWebhooks? = nil,  health: Health_getAllAccountWebhooks? = nil,  searchFilter: String? = nil) -> Promise<PageWebhookProjection>
```

List account webhooks Paginated

List account webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for paginated result list. (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let eventType = "eventType_example" // String | Optional event type (optional)
let health = "health_example" // String | Filter by webhook health (optional)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)

// List account webhooks Paginated
WebhookControllerAPI.getAllAccountWebhooks(page: page, size: size, sort: sort, since: since, before: before, eventType: eventType, health: health, searchFilter: searchFilter).then {
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
 **size** | **Int** | Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **eventType** | **String** | Optional event type | [optional] 
 **health** | **String** | Filter by webhook health | [optional] 
 **searchFilter** | **String** | Optional search filter | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookEndpoints**
```swift
    open class func getAllWebhookEndpoints( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllWebhookEndpoints? = nil,  searchFilter: String? = nil,  since: Date? = nil,  inboxId: UUID? = nil,  phoneId: UUID? = nil,  before: Date? = nil,  health: Health_getAllWebhookEndpoints? = nil,  eventType: EventType_getAllWebhookEndpoints? = nil) -> Promise<PageWebhookEndpointProjection>
```

List Webhooks endpoints Paginated

List webhooks URL in paginated form. Allows for page index, page size, and sort direction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for paginated result list. (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let inboxId = 987 // UUID | Filter by inboxId (optional)
let phoneId = 987 // UUID | Filter by phoneId (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let health = "health_example" // String | Filter by webhook health (optional)
let eventType = "eventType_example" // String | Optional event type (optional)

// List Webhooks endpoints Paginated
WebhookControllerAPI.getAllWebhookEndpoints(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, inboxId: inboxId, phoneId: phoneId, before: before, health: health, eventType: eventType).then {
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
 **size** | **Int** | Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **inboxId** | **UUID** | Filter by inboxId | [optional] 
 **phoneId** | **UUID** | Filter by phoneId | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **health** | **String** | Filter by webhook health | [optional] 
 **eventType** | **String** | Optional event type | [optional] 

### Return type

[**PageWebhookEndpointProjection**](PageWebhookEndpointProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhookResults**
```swift
    open class func getAllWebhookResults( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllWebhookResults? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  unseenOnly: Bool? = nil,  resultType: ResultType_getAllWebhookResults? = nil,  eventName: EventName_getAllWebhookResults? = nil,  minStatusCode: Int? = nil,  maxStatusCode: Int? = nil,  inboxId: UUID? = nil,  smsId: UUID? = nil,  attachmentId: UUID? = nil,  emailId: UUID? = nil,  phoneId: UUID? = nil) -> Promise<PageWebhookResult>
```

Get results for all webhooks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let unseenOnly = true // Bool | Filter for unseen exceptions only (optional)
let resultType = "resultType_example" // String | Filter by result type (optional)
let eventName = "eventName_example" // String | Filter by event name (optional)
let minStatusCode = 987 // Int | Minimum response status (optional)
let maxStatusCode = 987 // Int | Maximum response status (optional)
let inboxId = 987 // UUID | Inbox ID (optional)
let smsId = 987 // UUID | Sms ID (optional)
let attachmentId = 987 // UUID | Attachment ID (optional)
let emailId = 987 // UUID | Email ID (optional)
let phoneId = 987 // UUID | Phone ID (optional)

// Get results for all webhooks
WebhookControllerAPI.getAllWebhookResults(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, unseenOnly: unseenOnly, resultType: resultType, eventName: eventName, minStatusCode: minStatusCode, maxStatusCode: maxStatusCode, inboxId: inboxId, smsId: smsId, attachmentId: attachmentId, emailId: emailId, phoneId: phoneId).then {
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
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **unseenOnly** | **Bool** | Filter for unseen exceptions only | [optional] 
 **resultType** | **String** | Filter by result type | [optional] 
 **eventName** | **String** | Filter by event name | [optional] 
 **minStatusCode** | **Int** | Minimum response status | [optional] 
 **maxStatusCode** | **Int** | Maximum response status | [optional] 
 **inboxId** | **UUID** | Inbox ID | [optional] 
 **smsId** | **UUID** | Sms ID | [optional] 
 **attachmentId** | **UUID** | Attachment ID | [optional] 
 **emailId** | **UUID** | Email ID | [optional] 
 **phoneId** | **UUID** | Phone ID | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllWebhooks**
```swift
    open class func getAllWebhooks( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllWebhooks? = nil,  searchFilter: String? = nil,  since: Date? = nil,  inboxId: UUID? = nil,  phoneId: UUID? = nil,  before: Date? = nil,  health: Health_getAllWebhooks? = nil,  eventType: EventType_getAllWebhooks? = nil,  url: String? = nil) -> Promise<PageWebhookProjection>
```

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for paginated result list. (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let inboxId = 987 // UUID | Filter by inboxId (optional)
let phoneId = 987 // UUID | Filter by phoneId (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let health = "health_example" // String | Filter by webhook health (optional)
let eventType = "eventType_example" // String | Optional event type (optional)
let url = "url_example" // String | Optional url endpoint filter (optional)

// List Webhooks Paginated
WebhookControllerAPI.getAllWebhooks(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, inboxId: inboxId, phoneId: phoneId, before: before, health: health, eventType: eventType, url: url).then {
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
 **size** | **Int** | Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **inboxId** | **UUID** | Filter by inboxId | [optional] 
 **phoneId** | **UUID** | Filter by phoneId | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **health** | **String** | Filter by webhook health | [optional] 
 **eventType** | **String** | Optional event type | [optional] 
 **url** | **String** | Optional url endpoint filter | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxWebhooksPaginated**
```swift
    open class func getInboxWebhooksPaginated( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxWebhooksPaginated? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  health: Health_getInboxWebhooksPaginated? = nil,  eventType: EventType_getInboxWebhooksPaginated? = nil) -> Promise<PageWebhookProjection>
```

Get paginated webhooks for an Inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let health = "health_example" // String | Filter by webhook health (optional)
let eventType = "eventType_example" // String | Optional event type (optional)

// Get paginated webhooks for an Inbox
WebhookControllerAPI.getInboxWebhooksPaginated(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, health: health, eventType: eventType).then {
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
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **health** | **String** | Filter by webhook health | [optional] 
 **eventType** | **String** | Optional event type | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonSchemaForWebhookEvent**
```swift
    open class func getJsonSchemaForWebhookEvent( event: Event_getJsonSchemaForWebhookEvent) -> Promise<JSONSchemaDto>
```



Get JSON Schema definition for webhook payload by event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let event = "event_example" // String | 

WebhookControllerAPI.getJsonSchemaForWebhookEvent(event: event).then {
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
 **event** | **String** |  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getJsonSchemaForWebhookPayload**
```swift
    open class func getJsonSchemaForWebhookPayload( webhookId: UUID) -> Promise<JSONSchemaDto>
```



Get JSON Schema definition for webhook payload

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | 

WebhookControllerAPI.getJsonSchemaForWebhookPayload(webhookId: webhookId).then {
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
 **webhookId** | **UUID** |  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getPhoneNumberWebhooksPaginated**
```swift
    open class func getPhoneNumberWebhooksPaginated( phoneId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getPhoneNumberWebhooksPaginated? = nil,  since: Date? = nil,  before: Date? = nil,  eventType: EventType_getPhoneNumberWebhooksPaginated? = nil,  searchFilter: String? = nil,  health: Health_getPhoneNumberWebhooksPaginated? = nil) -> Promise<PageWebhookProjection>
```

Get paginated webhooks for a phone number

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let phoneId = 987 // UUID | 
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let eventType = "eventType_example" // String | Optional event type (optional)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let health = "health_example" // String | Filter by webhook health (optional)

// Get paginated webhooks for a phone number
WebhookControllerAPI.getPhoneNumberWebhooksPaginated(phoneId: phoneId, page: page, size: size, sort: sort, since: since, before: before, eventType: eventType, searchFilter: searchFilter, health: health).then {
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
 **phoneId** | **UUID** |  | 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **eventType** | **String** | Optional event type | [optional] 
 **searchFilter** | **String** | Optional search filter | [optional] 
 **health** | **String** | Filter by webhook health | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

let eventName = "eventName_example" // String |  (optional)

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
 **eventName** | **String** |  | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadBounce**
```swift
    open class func getTestWebhookPayloadBounce() -> Promise<WebhookBouncePayload>
```



Get webhook test payload for bounce

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


WebhookControllerAPI.getTestWebhookPayloadBounce().then {
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

[**WebhookBouncePayload**](WebhookBouncePayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadBounceRecipient**
```swift
    open class func getTestWebhookPayloadBounceRecipient() -> Promise<WebhookBounceRecipientPayload>
```



Get webhook test payload for bounce recipient

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


WebhookControllerAPI.getTestWebhookPayloadBounceRecipient().then {
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

[**WebhookBounceRecipientPayload**](WebhookBounceRecipientPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadDeliveryStatus**
```swift
    open class func getTestWebhookPayloadDeliveryStatus() -> Promise<WebhookDeliveryStatusPayload>
```

Get webhook test payload for delivery status event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for delivery status event
WebhookControllerAPI.getTestWebhookPayloadDeliveryStatus().then {
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

[**WebhookDeliveryStatusPayload**](WebhookDeliveryStatusPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadEmailRead**
```swift
    open class func getTestWebhookPayloadEmailRead() -> Promise<WebhookEmailReadPayload>
```



Get webhook test payload for email opened event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


WebhookControllerAPI.getTestWebhookPayloadEmailRead().then {
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

[**WebhookEmailReadPayload**](WebhookEmailReadPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadForWebhook**
```swift
    open class func getTestWebhookPayloadForWebhook( webhookId: UUID) -> Promise<AbstractWebhookPayload>
```



Get example payload for webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | 

WebhookControllerAPI.getTestWebhookPayloadForWebhook(webhookId: webhookId).then {
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
 **webhookId** | **UUID** |  | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewAITransformResult**
```swift
    open class func getTestWebhookPayloadNewAITransformResult() -> Promise<WebhookNewAITransformResultPayload>
```

Get webhook test payload for new ai transform result event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for new ai transform result event
WebhookControllerAPI.getTestWebhookPayloadNewAITransformResult().then {
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

[**WebhookNewAITransformResultPayload**](WebhookNewAITransformResultPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTestWebhookPayloadNewSms**
```swift
    open class func getTestWebhookPayloadNewSms() -> Promise<WebhookNewSmsPayload>
```

Get webhook test payload for new sms event

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get webhook test payload for new sms event
WebhookControllerAPI.getTestWebhookPayloadNewSms().then {
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

[**WebhookNewSmsPayload**](WebhookNewSmsPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhook**
```swift
    open class func getWebhook( webhookId: UUID) -> Promise<WebhookDto>
```

Get a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | 

// Get a webhook
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
 **webhookId** | **UUID** |  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResult**
```swift
    open class func getWebhookResult( webhookResultId: UUID) -> Promise<WebhookResultDto>
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
 **webhookResultId** | **UUID** | Webhook Result ID | 

### Return type

[**WebhookResultDto**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResults**
```swift
    open class func getWebhookResults( webhookId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getWebhookResults? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  unseenOnly: Bool? = nil,  resultType: ResultType_getWebhookResults? = nil,  eventName: EventName_getWebhookResults? = nil,  minStatusCode: Int? = nil,  maxStatusCode: Int? = nil,  inboxId: UUID? = nil,  smsId: UUID? = nil,  attachmentId: UUID? = nil,  emailId: UUID? = nil,  phoneId: UUID? = nil) -> Promise<PageWebhookResult>
```

Get a webhook results for a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | ID of webhook to get results for
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let unseenOnly = true // Bool | Filter for unseen exceptions only (optional)
let resultType = "resultType_example" // String | Filter by result type (optional)
let eventName = "eventName_example" // String | Filter by event name (optional)
let minStatusCode = 987 // Int | Minimum response status (optional)
let maxStatusCode = 987 // Int | Maximum response status (optional)
let inboxId = 987 // UUID | Inbox ID (optional)
let smsId = 987 // UUID | Sms ID (optional)
let attachmentId = 987 // UUID | Attachment ID (optional)
let emailId = 987 // UUID | Email ID (optional)
let phoneId = 987 // UUID | Phone ID (optional)

// Get a webhook results for a webhook
WebhookControllerAPI.getWebhookResults(webhookId: webhookId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, unseenOnly: unseenOnly, resultType: resultType, eventName: eventName, minStatusCode: minStatusCode, maxStatusCode: maxStatusCode, inboxId: inboxId, smsId: smsId, attachmentId: attachmentId, emailId: emailId, phoneId: phoneId).then {
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
 **webhookId** | **UUID** | ID of webhook to get results for | 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **unseenOnly** | **Bool** | Filter for unseen exceptions only | [optional] 
 **resultType** | **String** | Filter by result type | [optional] 
 **eventName** | **String** | Filter by event name | [optional] 
 **minStatusCode** | **Int** | Minimum response status | [optional] 
 **maxStatusCode** | **Int** | Maximum response status | [optional] 
 **inboxId** | **UUID** | Inbox ID | [optional] 
 **smsId** | **UUID** | Sms ID | [optional] 
 **attachmentId** | **UUID** | Attachment ID | [optional] 
 **emailId** | **UUID** | Email ID | [optional] 
 **phoneId** | **UUID** | Phone ID | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsCount**
```swift
    open class func getWebhookResultsCount( webhookId: UUID) -> Promise<CountDto>
```

Get a webhook results count for a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | ID of webhook to get results for

// Get a webhook results count for a webhook
WebhookControllerAPI.getWebhookResultsCount(webhookId: webhookId).then {
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
 **webhookId** | **UUID** | ID of webhook to get results for | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhookResultsUnseenErrorCount**
```swift
    open class func getWebhookResultsUnseenErrorCount() -> Promise<UnseenErrorCountDto>
```

Get count of unseen webhook results with error status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get count of unseen webhook results with error status
WebhookControllerAPI.getWebhookResultsUnseenErrorCount().then {
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

[**UnseenErrorCountDto**](UnseenErrorCountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getWebhooks**
```swift
    open class func getWebhooks( inboxId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getWebhooks? = nil) -> Promise<[WebhookProjection]>
```

Get all webhooks for an Inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | 
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all webhooks for an Inbox
WebhookControllerAPI.getWebhooks(inboxId: inboxId, page: page, size: size, sort: sort).then {
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
 **inboxId** | **UUID** |  | 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**[WebhookProjection]**](WebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redriveAllWebhookResults**
```swift
    open class func redriveAllWebhookResults() -> Promise<WebhookRedriveAllResult>
```

Redrive all webhook results that have failed status

Allows you to resend webhook payloads for any recorded webhook result that failed to deliver the payload.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Redrive all webhook results that have failed status
WebhookControllerAPI.redriveAllWebhookResults().then {
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

[**WebhookRedriveAllResult**](WebhookRedriveAllResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **redriveWebhookResult**
```swift
    open class func redriveWebhookResult( webhookResultId: UUID) -> Promise<WebhookRedriveResult>
```

Get a webhook result and try to resend the original webhook payload

Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookResultId = 987 // UUID | Webhook Result ID

// Get a webhook result and try to resend the original webhook payload
WebhookControllerAPI.redriveWebhookResult(webhookResultId: webhookResultId).then {
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
 **webhookResultId** | **UUID** | Webhook Result ID | 

### Return type

[**WebhookRedriveResult**](WebhookRedriveResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

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

let webhookId = 987 // UUID | 

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
 **webhookId** | **UUID** |  | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateWebhook**
```swift
    open class func updateWebhook( webhookId: UUID,  createWebhookOptions: CreateWebhookOptions,  inboxId: UUID? = nil,  phoneNumberId: UUID? = nil,  overrideAuth: Bool? = nil) -> Promise<WebhookDto>
```

Update a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | 
let createWebhookOptions = CreateWebhookOptions(url: "url_example", basicAuth: BasicAuthOptions(username: "username_example", password: "password_example"), name: "name_example", eventName: "eventName_example", includeHeaders: WebhookHeaders(headers: [WebhookHeaderNameValue(name: "name_example", value: "value_example")]), requestBodyTemplate: "requestBodyTemplate_example", aiTransformId: 123, useStaticIpRange: false, ignoreInsecureSslCertificates: false, tags: ["tags_example"]) // CreateWebhookOptions | 
let inboxId = 987 // UUID |  (optional)
let phoneNumberId = 987 // UUID |  (optional)
let overrideAuth = true // Bool |  (optional)

// Update a webhook
WebhookControllerAPI.updateWebhook(webhookId: webhookId, createWebhookOptions: createWebhookOptions, inboxId: inboxId, phoneNumberId: phoneNumberId, overrideAuth: overrideAuth).then {
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
 **webhookId** | **UUID** |  | 
 **createWebhookOptions** | [**CreateWebhookOptions**](CreateWebhookOptions) |  | 
 **inboxId** | **UUID** |  | [optional] 
 **phoneNumberId** | **UUID** |  | [optional] 
 **overrideAuth** | **Bool** |  | [optional] 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateWebhookHeaders**
```swift
    open class func updateWebhookHeaders( webhookId: UUID,  webhookHeaders: WebhookHeaders) -> Promise<WebhookDto>
```

Update a webhook request headers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | 
let webhookHeaders = WebhookHeaders(headers: [WebhookHeaderNameValue(name: "name_example", value: "value_example")]) // WebhookHeaders | 

// Update a webhook request headers
WebhookControllerAPI.updateWebhookHeaders(webhookId: webhookId, webhookHeaders: webhookHeaders).then {
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
 **webhookId** | **UUID** |  | 
 **webhookHeaders** | [**WebhookHeaders**](WebhookHeaders) |  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **verifyWebhookSignature**
```swift
    open class func verifyWebhookSignature( verifyWebhookSignatureOptions: VerifyWebhookSignatureOptions) -> Promise<VerifyWebhookSignatureResults>
```

Verify a webhook payload signature

Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let verifyWebhookSignatureOptions = VerifyWebhookSignatureOptions(messageId: "messageId_example", signature: "signature_example") // VerifyWebhookSignatureOptions | 

// Verify a webhook payload signature
WebhookControllerAPI.verifyWebhookSignature(verifyWebhookSignatureOptions: verifyWebhookSignatureOptions).then {
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
 **verifyWebhookSignatureOptions** | [**VerifyWebhookSignatureOptions**](VerifyWebhookSignatureOptions) |  | 

### Return type

[**VerifyWebhookSignatureResults**](VerifyWebhookSignatureResults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForWebhookResults**
```swift
    open class func waitForWebhookResults( webhookId: UUID,  expectedCount: Int,  timeout: Int) -> Promise<[WebhookResultDto]>
```

Wait for webhook results for a webhook

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let webhookId = 987 // UUID | ID of webhook to get results for
let expectedCount = 987 // Int | Expected result count
let timeout = 987 // Int | Max time to wait in milliseconds

// Wait for webhook results for a webhook
WebhookControllerAPI.waitForWebhookResults(webhookId: webhookId, expectedCount: expectedCount, timeout: timeout).then {
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
 **webhookId** | **UUID** | ID of webhook to get results for | 
 **expectedCount** | **Int** | Expected result count | 
 **timeout** | **Int** | Max time to wait in milliseconds | 

### Return type

[**[WebhookResultDto]**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

