# RulesetControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewRuleset**](RulesetControllerAPI#createnewruleset) | **POST** /rulesets | Create a ruleset
[**deleteRuleset**](RulesetControllerAPI#deleteruleset) | **DELETE** /rulesets/{id} | Delete a ruleset
[**deleteRulesets**](RulesetControllerAPI#deleterulesets) | **DELETE** /rulesets | Delete rulesets
[**getRuleset**](RulesetControllerAPI#getruleset) | **GET** /rulesets/{id} | Get a ruleset
[**getRulesets**](RulesetControllerAPI#getrulesets) | **GET** /rulesets | List rulesets block and allow lists
[**testInboxRulesetsForInbox**](RulesetControllerAPI#testinboxrulesetsforinbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**testNewRuleset**](RulesetControllerAPI#testnewruleset) | **PATCH** /rulesets | Test new ruleset
[**testRuleset**](RulesetControllerAPI#testruleset) | **POST** /rulesets/{id}/test | Test a ruleset
[**testRulesetReceiving**](RulesetControllerAPI#testrulesetreceiving) | **POST** /rulesets/test-receiving | Test receiving with rulesets
[**testRulesetSending**](RulesetControllerAPI#testrulesetsending) | **POST** /rulesets/test-sending | Test sending with rulesets


# **createNewRuleset**
```swift
    open class func createNewRuleset( createRulesetOptions: CreateRulesetOptions,  inboxId: UUID? = nil,  phoneId: UUID? = nil) -> Promise<RulesetDto>
```

Create a ruleset

Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createRulesetOptions = CreateRulesetOptions(scope: "scope_example", action: "action_example", target: "target_example") // CreateRulesetOptions | 
let inboxId = 987 // UUID | Inbox id to attach ruleset to (optional)
let phoneId = 987 // UUID | Phone id to attach ruleset to (optional)

// Create a ruleset
RulesetControllerAPI.createNewRuleset(createRulesetOptions: createRulesetOptions, inboxId: inboxId, phoneId: phoneId).then {
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
 **createRulesetOptions** | [**CreateRulesetOptions**](CreateRulesetOptions) |  | 
 **inboxId** | **UUID** | Inbox id to attach ruleset to | [optional] 
 **phoneId** | **UUID** | Phone id to attach ruleset to | [optional] 

### Return type

[**RulesetDto**](RulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteRuleset**
```swift
    open class func deleteRuleset( _id: UUID) -> Promise<Void>
```

Delete a ruleset

Delete ruleset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of ruleset

// Delete a ruleset
RulesetControllerAPI.deleteRuleset(_id: _id).then {
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
 **_id** | **UUID** | ID of ruleset | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteRulesets**
```swift
    open class func deleteRulesets( inboxId: UUID? = nil,  phoneId: UUID? = nil) -> Promise<Void>
```

Delete rulesets

Delete rulesets. Accepts optional inboxId or phoneId filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to attach ruleset to (optional)
let phoneId = 987 // UUID |  (optional)

// Delete rulesets
RulesetControllerAPI.deleteRulesets(inboxId: inboxId, phoneId: phoneId).then {
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
 **inboxId** | **UUID** | Optional inbox id to attach ruleset to | [optional] 
 **phoneId** | **UUID** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRuleset**
```swift
    open class func getRuleset( _id: UUID) -> Promise<RulesetDto>
```

Get a ruleset

Get ruleset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of ruleset

// Get a ruleset
RulesetControllerAPI.getRuleset(_id: _id).then {
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
 **_id** | **UUID** | ID of ruleset | 

### Return type

[**RulesetDto**](RulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getRulesets**
```swift
    open class func getRulesets( inboxId: UUID? = nil,  phoneId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getRulesets? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageRulesetDto>
```

List rulesets block and allow lists

List all rulesets attached to an inbox or phone or account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to get rulesets from (optional)
let phoneId = 987 // UUID | Optional phone id to get rulesets from (optional)
let page = 987 // Int | Optional page index in inbox ruleset list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in inbox ruleset list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// List rulesets block and allow lists
RulesetControllerAPI.getRulesets(inboxId: inboxId, phoneId: phoneId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).then {
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
 **inboxId** | **UUID** | Optional inbox id to get rulesets from | [optional] 
 **phoneId** | **UUID** | Optional phone id to get rulesets from | [optional] 
 **page** | **Int** | Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageRulesetDto**](PageRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxRulesetsForInbox**
```swift
    open class func testInboxRulesetsForInbox( inboxId: UUID,  rulesetTestOptions: RulesetTestOptions) -> Promise<InboxRulesetTestResult>
```

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of inbox
let rulesetTestOptions = RulesetTestOptions(testTarget: "testTarget_example") // RulesetTestOptions | 

// Test inbox rulesets for inbox
RulesetControllerAPI.testInboxRulesetsForInbox(inboxId: inboxId, rulesetTestOptions: rulesetTestOptions).then {
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
 **inboxId** | **UUID** | ID of inbox | 
 **rulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions) |  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewRuleset**
```swift
    open class func testNewRuleset( testNewInboxRulesetOptions: TestNewInboxRulesetOptions) -> Promise<InboxRulesetTestResult>
```

Test new ruleset

Test new ruleset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testNewInboxRulesetOptions = TestNewInboxRulesetOptions(inboxRulesetTestOptions: RulesetTestOptions(testTarget: "testTarget_example"), createRulesetOptions: CreateRulesetOptions(scope: "scope_example", action: "action_example", target: "target_example")) // TestNewInboxRulesetOptions | 

// Test new ruleset
RulesetControllerAPI.testNewRuleset(testNewInboxRulesetOptions: testNewInboxRulesetOptions).then {
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
 **testNewInboxRulesetOptions** | [**TestNewInboxRulesetOptions**](TestNewInboxRulesetOptions) |  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRuleset**
```swift
    open class func testRuleset( _id: UUID,  rulesetTestOptions: RulesetTestOptions) -> Promise<InboxRulesetTestResult>
```

Test a ruleset

Test an inbox or phone ruleset

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of ruleset
let rulesetTestOptions = RulesetTestOptions(testTarget: "testTarget_example") // RulesetTestOptions | 

// Test a ruleset
RulesetControllerAPI.testRuleset(_id: _id, rulesetTestOptions: rulesetTestOptions).then {
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
 **_id** | **UUID** | ID of ruleset | 
 **rulesetTestOptions** | [**RulesetTestOptions**](RulesetTestOptions) |  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRulesetReceiving**
```swift
    open class func testRulesetReceiving( testRulesetReceivingOptions: TestRulesetReceivingOptions) -> Promise<TestRulesetReceivingResult>
```

Test receiving with rulesets

Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testRulesetReceivingOptions = TestRulesetReceivingOptions(inboxId: 123, phoneId: 123, fromSender: "fromSender_example") // TestRulesetReceivingOptions | 

// Test receiving with rulesets
RulesetControllerAPI.testRulesetReceiving(testRulesetReceivingOptions: testRulesetReceivingOptions).then {
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
 **testRulesetReceivingOptions** | [**TestRulesetReceivingOptions**](TestRulesetReceivingOptions) |  | 

### Return type

[**TestRulesetReceivingResult**](TestRulesetReceivingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testRulesetSending**
```swift
    open class func testRulesetSending( testInboxRulesetSendingOptions: TestInboxRulesetSendingOptions) -> Promise<TestRulesetSendingResult>
```

Test sending with rulesets

Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testInboxRulesetSendingOptions = TestInboxRulesetSendingOptions(inboxId: 123, phoneId: 123, recipient: "recipient_example") // TestInboxRulesetSendingOptions | 

// Test sending with rulesets
RulesetControllerAPI.testRulesetSending(testInboxRulesetSendingOptions: testInboxRulesetSendingOptions).then {
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
 **testInboxRulesetSendingOptions** | [**TestInboxRulesetSendingOptions**](TestInboxRulesetSendingOptions) |  | 

### Return type

[**TestRulesetSendingResult**](TestRulesetSendingResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

