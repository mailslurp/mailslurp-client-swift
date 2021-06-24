# InboxRulesetControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxRuleset**](InboxRulesetControllerAPI#createnewinboxruleset) | **POST** /rulesets | Create an inbox ruleset
[**deleteInboxRuleset**](InboxRulesetControllerAPI#deleteinboxruleset) | **DELETE** /rulesets/{id} | Delete an inbox ruleset
[**deleteInboxRulesets**](InboxRulesetControllerAPI#deleteinboxrulesets) | **DELETE** /rulesets | Delete inbox rulesets
[**getInboxRuleset**](InboxRulesetControllerAPI#getinboxruleset) | **GET** /rulesets/{id} | Get an inbox ruleset
[**getInboxRulesets**](InboxRulesetControllerAPI#getinboxrulesets) | **GET** /rulesets | List inbox rulesets


# **createNewInboxRuleset**
```swift
    open class func createNewInboxRuleset( createInboxRulesetOptions: CreateInboxRulesetOptions,  inboxId: UUID? = nil) -> Promise<InboxRulesetDto>
```

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createInboxRulesetOptions = CreateInboxRulesetOptions(action: "action_example", scope: "scope_example", target: "target_example") // CreateInboxRulesetOptions | createInboxRulesetOptions
let inboxId = 987 // UUID | Inbox id to attach ruleset to (optional)

// Create an inbox ruleset
InboxRulesetControllerAPI.createNewInboxRuleset(createInboxRulesetOptions: createInboxRulesetOptions, inboxId: inboxId).then {
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
 **createInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions) | createInboxRulesetOptions | 
 **inboxId** | [**UUID**]() | Inbox id to attach ruleset to | [optional] 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRuleset**
```swift
    open class func deleteInboxRuleset( _id: UUID) -> Promise<Void>
```

Delete an inbox ruleset

Delete inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox ruleset

// Delete an inbox ruleset
InboxRulesetControllerAPI.deleteInboxRuleset(_id: _id).then {
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
 **_id** | [**UUID**]() | ID of inbox ruleset | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRulesets**
```swift
    open class func deleteInboxRulesets( inboxId: UUID? = nil) -> Promise<Void>
```

Delete inbox rulesets

Delete inbox rulesets. Accepts optional inboxId filter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to attach ruleset to (optional)

// Delete inbox rulesets
InboxRulesetControllerAPI.deleteInboxRulesets(inboxId: inboxId).then {
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
 **inboxId** | [**UUID**]() | Optional inbox id to attach ruleset to | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRuleset**
```swift
    open class func getInboxRuleset( _id: UUID) -> Promise<InboxRulesetDto>
```

Get an inbox ruleset

Get inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of inbox ruleset

// Get an inbox ruleset
InboxRulesetControllerAPI.getInboxRuleset(_id: _id).then {
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
 **_id** | [**UUID**]() | ID of inbox ruleset | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRulesets**
```swift
    open class func getInboxRulesets( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxRulesets? = nil) -> Promise<PageInboxRulesetProjection>
```

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to get rulesets from (optional)
let page = 987 // Int | Optional page index in inbox ruleset list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox ruleset list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// List inbox rulesets
InboxRulesetControllerAPI.getInboxRulesets(inboxId: inboxId, page: page, size: size, sort: sort).then {
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
 **inboxId** | [**UUID**]() | Optional inbox id to get rulesets from | [optional] 
 **page** | **Int** | Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageInboxRulesetProjection**](PageInboxRulesetProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

