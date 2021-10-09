# WaitForControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**waitFor**](WaitForControllerAPI#waitfor) | **POST** /waitFor | Wait for an email to match the provided filter conditions such as subject contains keyword.
[**waitForEmailCount**](WaitForControllerAPI#waitforemailcount) | **GET** /waitForEmailCount | Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[**waitForLatestEmail**](WaitForControllerAPI#waitforlatestemail) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**waitForMatchingEmails**](WaitForControllerAPI#waitformatchingemails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**waitForMatchingFirstEmail**](WaitForControllerAPI#waitformatchingfirstemail) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**waitForNthEmail**](WaitForControllerAPI#waitfornthemail) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.


# **waitFor**
```swift
    open class func waitFor( waitForConditions: WaitForConditions? = nil) -> Promise<[EmailPreview]>
```

Wait for an email to match the provided filter conditions such as subject contains keyword.

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let waitForConditions = WaitForConditions(before: Date(), count: 123, countType: "countType_example", delayTimeout: 123, inboxId: 123, matches: [MatchOption(field: "field_example", should: "should_example", value: "value_example")], since: Date(), sortDirection: "sortDirection_example", timeout: 123, unreadOnly: false) // WaitForConditions | Conditions to apply to emails that you are waiting for (optional)

// Wait for an email to match the provided filter conditions such as subject contains keyword.
WaitForControllerAPI.waitFor(waitForConditions: waitForConditions).then {
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
 **waitForConditions** | [**WaitForConditions**](WaitForConditions) | Conditions to apply to emails that you are waiting for | [optional] 

### Return type

[**[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForEmailCount**
```swift
    open class func waitForEmailCount( before: Date? = nil,  count: Int? = nil,  delay: Int64? = nil,  inboxId: UUID? = nil,  since: Date? = nil,  sort: Sort_waitForEmailCount? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil) -> Promise<[EmailPreview]>
```

Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter for emails that were received before the given timestamp (optional)
let count = 987 // Int | Number of emails to wait for. Must be greater that 1 (optional)
let delay = 987 // Int64 | Max milliseconds delay between calls (optional)
let inboxId = 987 // UUID | Id of the inbox we are fetching emails from (optional)
let since = Date() // Date | Filter for emails that were received after the given timestamp (optional)
let sort = "sort_example" // String | Sort direction (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
WaitForControllerAPI.waitForEmailCount(before: before, count: count, delay: delay, inboxId: inboxId, since: since, sort: sort, timeout: timeout, unreadOnly: unreadOnly).then {
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
 **before** | **Date** | Filter for emails that were received before the given timestamp | [optional] 
 **count** | **Int** | Number of emails to wait for. Must be greater that 1 | [optional] 
 **delay** | **Int64** | Max milliseconds delay between calls | [optional] 
 **inboxId** | [**UUID**]() | Id of the inbox we are fetching emails from | [optional] 
 **since** | **Date** | Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String** | Sort direction | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForLatestEmail**
```swift
    open class func waitForLatestEmail( before: Date? = nil,  delay: Int64? = nil,  inboxId: UUID? = nil,  since: Date? = nil,  sort: Sort_waitForLatestEmail? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil) -> Promise<Email>
```

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter for emails that were before after the given timestamp (optional)
let delay = 987 // Int64 | Max milliseconds delay between calls (optional)
let inboxId = 987 // UUID | Id of the inbox we are fetching emails from (optional)
let since = Date() // Date | Filter for emails that were received after the given timestamp (optional)
let sort = "sort_example" // String | Sort direction (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only. (optional) (default to false)

// Fetch inbox's latest email or if empty wait for an email to arrive
WaitForControllerAPI.waitForLatestEmail(before: before, delay: delay, inboxId: inboxId, since: since, sort: sort, timeout: timeout, unreadOnly: unreadOnly).then {
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
 **before** | **Date** | Filter for emails that were before after the given timestamp | [optional] 
 **delay** | **Int64** | Max milliseconds delay between calls | [optional] 
 **inboxId** | [**UUID**]() | Id of the inbox we are fetching emails from | [optional] 
 **since** | **Date** | Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String** | Sort direction | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only. | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingEmails**
```swift
    open class func waitForMatchingEmails( matchOptions: MatchOptions,  before: Date? = nil,  count: Int? = nil,  delay: Int64? = nil,  inboxId: UUID? = nil,  since: Date? = nil,  sort: Sort_waitForMatchingEmails? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil) -> Promise<[EmailPreview]>
```

Wait or return list of emails that match simple matching patterns

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let matchOptions = MatchOptions(conditions: [ConditionOption(condition: "condition_example", value: "value_example")], matches: [MatchOption(field: "field_example", should: "should_example", value: "value_example")]) // MatchOptions | matchOptions
let before = Date() // Date | Filter for emails that were received before the given timestamp (optional)
let count = 987 // Int | Number of emails to wait for. Must be greater or equal to 1 (optional)
let delay = 987 // Int64 | Max milliseconds delay between calls (optional)
let inboxId = 987 // UUID | Id of the inbox we are fetching emails from (optional)
let since = Date() // Date | Filter for emails that were received after the given timestamp (optional)
let sort = "sort_example" // String | Sort direction (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait or return list of emails that match simple matching patterns
WaitForControllerAPI.waitForMatchingEmails(matchOptions: matchOptions, before: before, count: count, delay: delay, inboxId: inboxId, since: since, sort: sort, timeout: timeout, unreadOnly: unreadOnly).then {
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
 **matchOptions** | [**MatchOptions**](MatchOptions) | matchOptions | 
 **before** | **Date** | Filter for emails that were received before the given timestamp | [optional] 
 **count** | **Int** | Number of emails to wait for. Must be greater or equal to 1 | [optional] 
 **delay** | **Int64** | Max milliseconds delay between calls | [optional] 
 **inboxId** | [**UUID**]() | Id of the inbox we are fetching emails from | [optional] 
 **since** | **Date** | Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String** | Sort direction | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**[EmailPreview]**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForMatchingFirstEmail**
```swift
    open class func waitForMatchingFirstEmail( matchOptions: MatchOptions,  before: Date? = nil,  delay: Int64? = nil,  inboxId: UUID? = nil,  since: Date? = nil,  sort: Sort_waitForMatchingFirstEmail? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil) -> Promise<Email>
```

Wait for or return the first email that matches provided MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let matchOptions = MatchOptions(conditions: [ConditionOption(condition: "condition_example", value: "value_example")], matches: [MatchOption(field: "field_example", should: "should_example", value: "value_example")]) // MatchOptions | matchOptions
let before = Date() // Date | Filter for emails that were received before the given timestamp (optional)
let delay = 987 // Int64 | Max milliseconds delay between calls (optional)
let inboxId = 987 // UUID | Id of the inbox we are matching an email for (optional)
let since = Date() // Date | Filter for emails that were received after the given timestamp (optional)
let sort = "sort_example" // String | Sort direction (optional)
let timeout = 987 // Int64 | Max milliseconds to wait (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait for or return the first email that matches provided MatchOptions array
WaitForControllerAPI.waitForMatchingFirstEmail(matchOptions: matchOptions, before: before, delay: delay, inboxId: inboxId, since: since, sort: sort, timeout: timeout, unreadOnly: unreadOnly).then {
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
 **matchOptions** | [**MatchOptions**](MatchOptions) | matchOptions | 
 **before** | **Date** | Filter for emails that were received before the given timestamp | [optional] 
 **delay** | **Int64** | Max milliseconds delay between calls | [optional] 
 **inboxId** | [**UUID**]() | Id of the inbox we are matching an email for | [optional] 
 **since** | **Date** | Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String** | Sort direction | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **waitForNthEmail**
```swift
    open class func waitForNthEmail( before: Date? = nil,  delay: Int64? = nil,  inboxId: UUID? = nil,  index: Int? = nil,  since: Date? = nil,  sort: Sort_waitForNthEmail? = nil,  timeout: Int64? = nil,  unreadOnly: Bool? = nil) -> Promise<Email>
```

Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let before = Date() // Date | Filter for emails that were received before the given timestamp (optional)
let delay = 987 // Int64 | Max milliseconds delay between calls (optional)
let inboxId = 987 // UUID | Id of the inbox you are fetching emails from (optional)
let index = 987 // Int | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1 (optional) (default to 0)
let since = Date() // Date | Filter for emails that were received after the given timestamp (optional)
let sort = "sort_example" // String | Sort direction (optional)
let timeout = 987 // Int64 | Max milliseconds to wait for the nth email if not already present (optional)
let unreadOnly = true // Bool | Optional filter for unread only (optional) (default to false)

// Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
WaitForControllerAPI.waitForNthEmail(before: before, delay: delay, inboxId: inboxId, index: index, since: since, sort: sort, timeout: timeout, unreadOnly: unreadOnly).then {
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
 **before** | **Date** | Filter for emails that were received before the given timestamp | [optional] 
 **delay** | **Int64** | Max milliseconds delay between calls | [optional] 
 **inboxId** | [**UUID**]() | Id of the inbox you are fetching emails from | [optional] 
 **index** | **Int** | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to 0]
 **since** | **Date** | Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String** | Sort direction | [optional] 
 **timeout** | **Int64** | Max milliseconds to wait for the nth email if not already present | [optional] 
 **unreadOnly** | **Bool** | Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

