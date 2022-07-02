# InboxRulesetControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewInboxRuleset**](InboxRulesetControllerAPI#createnewinboxruleset) | **POST** /rulesets | Create an inbox ruleset
[**deleteInboxRuleset**](InboxRulesetControllerAPI#deleteinboxruleset) | **DELETE** /rulesets/{id} | Delete an inbox ruleset
[**deleteInboxRulesets**](InboxRulesetControllerAPI#deleteinboxrulesets) | **DELETE** /rulesets | Delete inbox rulesets
[**getInboxRuleset**](InboxRulesetControllerAPI#getinboxruleset) | **GET** /rulesets/{id} | Get an inbox ruleset
[**getInboxRulesets**](InboxRulesetControllerAPI#getinboxrulesets) | **GET** /rulesets | List inbox rulesets
[**testInboxRuleset**](InboxRulesetControllerAPI#testinboxruleset) | **POST** /rulesets/{id}/test | Test an inbox ruleset
[**testInboxRulesetsForInbox**](InboxRulesetControllerAPI#testinboxrulesetsforinbox) | **PUT** /rulesets | Test inbox rulesets for inbox
[**testNewInboxRuleset**](InboxRulesetControllerAPI#testnewinboxruleset) | **PATCH** /rulesets | Test new inbox ruleset


# **createNewInboxRuleset**
```swift
    open class func createNewInboxRuleset(inboxId: UUID, createInboxRulesetOptions: CreateInboxRulesetOptions, completion: @escaping (_ data: InboxRulesetDto?, _ error: Error?) -> Void)
```

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Inbox id to attach ruleset to
let createInboxRulesetOptions = CreateInboxRulesetOptions(scope: "scope_example", action: "action_example", target: "target_example") // CreateInboxRulesetOptions | 

// Create an inbox ruleset
InboxRulesetControllerAPI.createNewInboxRuleset(inboxId: inboxId, createInboxRulesetOptions: createInboxRulesetOptions) { (response, error) in
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
 **inboxId** | [**UUID**]() | Inbox id to attach ruleset to | 
 **createInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions) |  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInboxRuleset**
```swift
    open class func deleteInboxRuleset(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an inbox ruleset

Delete inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | ID of inbox ruleset

// Delete an inbox ruleset
InboxRulesetControllerAPI.deleteInboxRuleset(id: id) { (response, error) in
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
 **id** | [**UUID**]() | ID of inbox ruleset | 

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
    open class func deleteInboxRulesets(inboxId: UUID? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete inbox rulesets

Delete inbox rulesets. Accepts optional inboxId filter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | Optional inbox id to attach ruleset to (optional)

// Delete inbox rulesets
InboxRulesetControllerAPI.deleteInboxRulesets(inboxId: inboxId) { (response, error) in
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
    open class func getInboxRuleset(id: UUID, completion: @escaping (_ data: InboxRulesetDto?, _ error: Error?) -> Void)
```

Get an inbox ruleset

Get inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | ID of inbox ruleset

// Get an inbox ruleset
InboxRulesetControllerAPI.getInboxRuleset(id: id) { (response, error) in
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
 **id** | [**UUID**]() | ID of inbox ruleset | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxRulesets**
```swift
    open class func getInboxRulesets(inboxId: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getInboxRulesets? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, completion: @escaping (_ data: PageInboxRulesetDto?, _ error: Error?) -> Void)
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
let searchFilter = "searchFilter_example" // String | Optional search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// List inbox rulesets
InboxRulesetControllerAPI.getInboxRulesets(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before) { (response, error) in
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
 **inboxId** | [**UUID**]() | Optional inbox id to get rulesets from | [optional] 
 **page** | **Int** | Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **searchFilter** | **String** | Optional search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxRuleset**
```swift
    open class func testInboxRuleset(id: UUID, inboxRulesetTestOptions: InboxRulesetTestOptions, completion: @escaping (_ data: InboxRulesetTestResult?, _ error: Error?) -> Void)
```

Test an inbox ruleset

Test an inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let id = 987 // UUID | ID of inbox ruleset
let inboxRulesetTestOptions = InboxRulesetTestOptions(testTarget: "testTarget_example") // InboxRulesetTestOptions | 

// Test an inbox ruleset
InboxRulesetControllerAPI.testInboxRuleset(id: id, inboxRulesetTestOptions: inboxRulesetTestOptions) { (response, error) in
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
 **id** | [**UUID**]() | ID of inbox ruleset | 
 **inboxRulesetTestOptions** | [**InboxRulesetTestOptions**](InboxRulesetTestOptions) |  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testInboxRulesetsForInbox**
```swift
    open class func testInboxRulesetsForInbox(inboxId: UUID, inboxRulesetTestOptions: InboxRulesetTestOptions, completion: @escaping (_ data: InboxRulesetTestResult?, _ error: Error?) -> Void)
```

Test inbox rulesets for inbox

Test inbox rulesets for inbox

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let inboxId = 987 // UUID | ID of inbox
let inboxRulesetTestOptions = InboxRulesetTestOptions(testTarget: "testTarget_example") // InboxRulesetTestOptions | 

// Test inbox rulesets for inbox
InboxRulesetControllerAPI.testInboxRulesetsForInbox(inboxId: inboxId, inboxRulesetTestOptions: inboxRulesetTestOptions) { (response, error) in
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
 **inboxId** | [**UUID**]() | ID of inbox | 
 **inboxRulesetTestOptions** | [**InboxRulesetTestOptions**](InboxRulesetTestOptions) |  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **testNewInboxRuleset**
```swift
    open class func testNewInboxRuleset(testNewInboxRulesetOptions: TestNewInboxRulesetOptions, completion: @escaping (_ data: InboxRulesetTestResult?, _ error: Error?) -> Void)
```

Test new inbox ruleset

Test new inbox ruleset

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testNewInboxRulesetOptions = TestNewInboxRulesetOptions(inboxRulesetTestOptions: InboxRulesetTestOptions(testTarget: "testTarget_example"), createInboxRulesetOptions: CreateInboxRulesetOptions(scope: "scope_example", action: "action_example", target: "target_example")) // TestNewInboxRulesetOptions | 

// Test new inbox ruleset
InboxRulesetControllerAPI.testNewInboxRuleset(testNewInboxRulesetOptions: testNewInboxRulesetOptions) { (response, error) in
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
 **testNewInboxRulesetOptions** | [**TestNewInboxRulesetOptions**](TestNewInboxRulesetOptions) |  | 

### Return type

[**InboxRulesetTestResult**](InboxRulesetTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

