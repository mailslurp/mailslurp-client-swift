# DeliverabilityTestControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDeliverabilitySimulationJob**](DeliverabilityTestControllerAPI#canceldeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/cancel | Cancel deliverability simulation job
[**createDeliverabilitySimulationJob**](DeliverabilityTestControllerAPI#createdeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs | Create deliverability simulation job
[**createDeliverabilityTest**](DeliverabilityTestControllerAPI#createdeliverabilitytest) | **POST** /test/deliverability | Create deliverability/load test
[**deleteDeliverabilityTest**](DeliverabilityTestControllerAPI#deletedeliverabilitytest) | **DELETE** /test/deliverability/{testId} | Delete deliverability/load test
[**duplicateDeliverabilityTest**](DeliverabilityTestControllerAPI#duplicatedeliverabilitytest) | **POST** /test/deliverability/{testId}/duplicate | Duplicate deliverability/load test
[**exportDeliverabilityTestReport**](DeliverabilityTestControllerAPI#exportdeliverabilitytestreport) | **GET** /test/deliverability/{testId}/report/export | Export deliverability/load test report as PDF
[**exportDeliverabilityTestResults**](DeliverabilityTestControllerAPI#exportdeliverabilitytestresults) | **GET** /test/deliverability/{testId}/results/export | Export deliverability/load test entity results as CSV
[**getDeliverabilityAnalyticsSeries**](DeliverabilityTestControllerAPI#getdeliverabilityanalyticsseries) | **GET** /test/deliverability/analytics/series | Get deliverability analytics time series
[**getDeliverabilityFailureHotspots**](DeliverabilityTestControllerAPI#getdeliverabilityfailurehotspots) | **GET** /test/deliverability/analytics/hotspots | Get deliverability failure hotspots
[**getDeliverabilitySimulationJob**](DeliverabilityTestControllerAPI#getdeliverabilitysimulationjob) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId} | Get deliverability simulation job
[**getDeliverabilitySimulationJobEvents**](DeliverabilityTestControllerAPI#getdeliverabilitysimulationjobevents) | **GET** /test/deliverability/{testId}/simulation-jobs/{jobId}/events | Get deliverability simulation job events
[**getDeliverabilityTest**](DeliverabilityTestControllerAPI#getdeliverabilitytest) | **GET** /test/deliverability/{testId} | Get deliverability/load test
[**getDeliverabilityTestResults**](DeliverabilityTestControllerAPI#getdeliverabilitytestresults) | **GET** /test/deliverability/{testId}/results | Get deliverability/load test entity results
[**getDeliverabilityTests**](DeliverabilityTestControllerAPI#getdeliverabilitytests) | **GET** /test/deliverability | List deliverability/load tests
[**getLatestDeliverabilitySimulationJob**](DeliverabilityTestControllerAPI#getlatestdeliverabilitysimulationjob) | **GET** /test/deliverability/{testId}/simulation-jobs/latest | Get latest deliverability simulation job
[**pauseDeliverabilitySimulationJob**](DeliverabilityTestControllerAPI#pausedeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/pause | Pause deliverability simulation job
[**pauseDeliverabilityTest**](DeliverabilityTestControllerAPI#pausedeliverabilitytest) | **POST** /test/deliverability/{testId}/pause | Pause deliverability/load test
[**pollDeliverabilityTestStatus**](DeliverabilityTestControllerAPI#polldeliverabilityteststatus) | **GET** /test/deliverability/{testId}/status | Poll deliverability/load test status
[**resumeDeliverabilitySimulationJob**](DeliverabilityTestControllerAPI#resumedeliverabilitysimulationjob) | **POST** /test/deliverability/{testId}/simulation-jobs/{jobId}/resume | Resume deliverability simulation job
[**startDeliverabilityTest**](DeliverabilityTestControllerAPI#startdeliverabilitytest) | **POST** /test/deliverability/{testId}/start | Start or resume deliverability/load test
[**stopDeliverabilityTest**](DeliverabilityTestControllerAPI#stopdeliverabilitytest) | **POST** /test/deliverability/{testId}/stop | Stop deliverability/load test
[**updateDeliverabilityTest**](DeliverabilityTestControllerAPI#updatedeliverabilitytest) | **PATCH** /test/deliverability/{testId} | Update deliverability/load test


# **cancelDeliverabilitySimulationJob**
```swift
    open class func cancelDeliverabilitySimulationJob( testId: UUID,  jobId: UUID) -> Promise<DeliverabilitySimulationJobDto>
```

Cancel deliverability simulation job

Cancel a running or paused simulation job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let jobId = 987 // UUID | 

// Cancel deliverability simulation job
DeliverabilityTestControllerAPI.cancelDeliverabilitySimulationJob(testId: testId, jobId: jobId).then {
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
 **testId** | **UUID** |  | 
 **jobId** | **UUID** |  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDeliverabilitySimulationJob**
```swift
    open class func createDeliverabilitySimulationJob( testId: UUID,  createDeliverabilitySimulationJobOptions: CreateDeliverabilitySimulationJobOptions) -> Promise<DeliverabilitySimulationJobDto>
```

Create deliverability simulation job

Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let createDeliverabilitySimulationJobOptions = CreateDeliverabilitySimulationJobOptions(senderInboxId: 123, senderPhoneId: 123, email: DeliverabilitySimulationEmailOptions(fromOverride: "fromOverride_example", subject: "subject_example", bodyTemplate: "bodyTemplate_example"), sms: DeliverabilitySimulationSmsOptions(bodyTemplate: "bodyTemplate_example"), delayMs: 123, batchSize: 123, sendsPerTarget: 123) // CreateDeliverabilitySimulationJobOptions | 

// Create deliverability simulation job
DeliverabilityTestControllerAPI.createDeliverabilitySimulationJob(testId: testId, createDeliverabilitySimulationJobOptions: createDeliverabilitySimulationJobOptions).then {
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
 **testId** | **UUID** |  | 
 **createDeliverabilitySimulationJobOptions** | [**CreateDeliverabilitySimulationJobOptions**](CreateDeliverabilitySimulationJobOptions) |  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDeliverabilityTest**
```swift
    open class func createDeliverabilityTest( createDeliverabilityTestOptions: CreateDeliverabilityTestOptions) -> Promise<DeliverabilityTestDto>
```

Create deliverability/load test

Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createDeliverabilityTestOptions = CreateDeliverabilityTestOptions(name: "name_example", _description: "_description_example", scope: "scope_example", startAt: Date(), maxDurationSeconds: 123, successThresholdPercent: 123, selector: DeliverabilitySelectorOptions(type: "type_example", pattern: "pattern_example", phoneCountry: "phoneCountry_example", entityIds: [123], excludeEntityIds: [123]), expectations: [DeliverabilityExpectation(name: "name_example", minCount: 123, from: "from_example", to: "to_example", subject: "subject_example")]) // CreateDeliverabilityTestOptions | 

// Create deliverability/load test
DeliverabilityTestControllerAPI.createDeliverabilityTest(createDeliverabilityTestOptions: createDeliverabilityTestOptions).then {
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
 **createDeliverabilityTestOptions** | [**CreateDeliverabilityTestOptions**](CreateDeliverabilityTestOptions) |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDeliverabilityTest**
```swift
    open class func deleteDeliverabilityTest( testId: UUID) -> Promise<DeleteResult>
```

Delete deliverability/load test

Delete test and all persisted entity-level results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Delete deliverability/load test
DeliverabilityTestControllerAPI.deleteDeliverabilityTest(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeleteResult**](DeleteResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **duplicateDeliverabilityTest**
```swift
    open class func duplicateDeliverabilityTest( testId: UUID) -> Promise<DeliverabilityTestDto>
```

Duplicate deliverability/load test

Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Duplicate deliverability/load test
DeliverabilityTestControllerAPI.duplicateDeliverabilityTest(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportDeliverabilityTestReport**
```swift
    open class func exportDeliverabilityTestReport( testId: UUID) -> Promise<Void>
```

Export deliverability/load test report as PDF

Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Export deliverability/load test report as PDF
DeliverabilityTestControllerAPI.exportDeliverabilityTestReport(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **exportDeliverabilityTestResults**
```swift
    open class func exportDeliverabilityTestResults( testId: UUID,  matched: Bool? = nil) -> Promise<Void>
```

Export deliverability/load test entity results as CSV

Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let matched = true // Bool |  (optional)

// Export deliverability/load test entity results as CSV
DeliverabilityTestControllerAPI.exportDeliverabilityTestResults(testId: testId, matched: matched).then {
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
 **testId** | **UUID** |  | 
 **matched** | **Bool** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityAnalyticsSeries**
```swift
    open class func getDeliverabilityAnalyticsSeries( since: Date? = nil,  before: Date? = nil,  scope: Scope_getDeliverabilityAnalyticsSeries? = nil,  bucket: Bucket_getDeliverabilityAnalyticsSeries? = nil,  runLimit: Int? = nil) -> Promise<DeliverabilityAnalyticsSeriesDto>
```

Get deliverability analytics time series

Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let scope = "scope_example" // String |  (optional)
let bucket = "bucket_example" // String |  (optional) (default to .day)
let runLimit = 987 // Int |  (optional)

// Get deliverability analytics time series
DeliverabilityTestControllerAPI.getDeliverabilityAnalyticsSeries(since: since, before: before, scope: scope, bucket: bucket, runLimit: runLimit).then {
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
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **scope** | **String** |  | [optional] 
 **bucket** | **String** |  | [optional] [default to .day]
 **runLimit** | **Int** |  | [optional] 

### Return type

[**DeliverabilityAnalyticsSeriesDto**](DeliverabilityAnalyticsSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityFailureHotspots**
```swift
    open class func getDeliverabilityFailureHotspots( since: Date? = nil,  before: Date? = nil,  scope: Scope_getDeliverabilityFailureHotspots? = nil,  limit: Int? = nil) -> Promise<DeliverabilityFailureHotspotsDto>
```

Get deliverability failure hotspots

Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let scope = "scope_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Get deliverability failure hotspots
DeliverabilityTestControllerAPI.getDeliverabilityFailureHotspots(since: since, before: before, scope: scope, limit: limit).then {
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
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **scope** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

[**DeliverabilityFailureHotspotsDto**](DeliverabilityFailureHotspotsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilitySimulationJob**
```swift
    open class func getDeliverabilitySimulationJob( testId: UUID,  jobId: UUID) -> Promise<DeliverabilitySimulationJobDto>
```

Get deliverability simulation job

Get simulation job status and progress counters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let jobId = 987 // UUID | 

// Get deliverability simulation job
DeliverabilityTestControllerAPI.getDeliverabilitySimulationJob(testId: testId, jobId: jobId).then {
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
 **testId** | **UUID** |  | 
 **jobId** | **UUID** |  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilitySimulationJobEvents**
```swift
    open class func getDeliverabilitySimulationJobEvents( testId: UUID,  jobId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getDeliverabilitySimulationJobEvents? = nil) -> Promise<DeliverabilitySimulationJobEventPageDto>
```

Get deliverability simulation job events

Get paged simulation events including send successes and failures.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let jobId = 987 // UUID | 
let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int |  (optional) (default to 20)
let sort = "sort_example" // String |  (optional) (default to .desc)

// Get deliverability simulation job events
DeliverabilityTestControllerAPI.getDeliverabilitySimulationJobEvents(testId: testId, jobId: jobId, page: page, size: size, sort: sort).then {
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
 **testId** | **UUID** |  | 
 **jobId** | **UUID** |  | 
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** |  | [optional] [default to 20]
 **sort** | **String** |  | [optional] [default to .desc]

### Return type

[**DeliverabilitySimulationJobEventPageDto**](DeliverabilitySimulationJobEventPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTest**
```swift
    open class func getDeliverabilityTest( testId: UUID) -> Promise<DeliverabilityTestDto>
```

Get deliverability/load test

Get deliverability test configuration and latest progress counters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Get deliverability/load test
DeliverabilityTestControllerAPI.getDeliverabilityTest(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTestResults**
```swift
    open class func getDeliverabilityTestResults( testId: UUID,  matched: Bool? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getDeliverabilityTestResults? = nil) -> Promise<DeliverabilityEntityResultPageDto>
```

Get deliverability/load test entity results

Get paged per-entity expectation results with optional matched/unmatched filtering.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let matched = true // Bool |  (optional)
let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int |  (optional) (default to 20)
let sort = "sort_example" // String |  (optional) (default to .asc)

// Get deliverability/load test entity results
DeliverabilityTestControllerAPI.getDeliverabilityTestResults(testId: testId, matched: matched, page: page, size: size, sort: sort).then {
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
 **testId** | **UUID** |  | 
 **matched** | **Bool** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** |  | [optional] [default to 20]
 **sort** | **String** |  | [optional] [default to .asc]

### Return type

[**DeliverabilityEntityResultPageDto**](DeliverabilityEntityResultPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDeliverabilityTests**
```swift
    open class func getDeliverabilityTests( page: Int? = nil,  size: Int? = nil,  sort: Sort_getDeliverabilityTests? = nil) -> Promise<DeliverabilityTestPageDto>
```

List deliverability/load tests

List deliverability tests for the authenticated account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Page index (optional) (default to 0)
let size = 987 // Int | Page size (optional) (default to 20)
let sort = "sort_example" // String | Sort direction (optional) (default to .desc)

// List deliverability/load tests
DeliverabilityTestControllerAPI.getDeliverabilityTests(page: page, size: size, sort: sort).then {
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
 **page** | **Int** | Page index | [optional] [default to 0]
 **size** | **Int** | Page size | [optional] [default to 20]
 **sort** | **String** | Sort direction | [optional] [default to .desc]

### Return type

[**DeliverabilityTestPageDto**](DeliverabilityTestPageDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getLatestDeliverabilitySimulationJob**
```swift
    open class func getLatestDeliverabilitySimulationJob( testId: UUID) -> Promise<DeliverabilitySimulationJobDto>
```

Get latest deliverability simulation job

Get the most recent simulation job for a deliverability test.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Get latest deliverability simulation job
DeliverabilityTestControllerAPI.getLatestDeliverabilitySimulationJob(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseDeliverabilitySimulationJob**
```swift
    open class func pauseDeliverabilitySimulationJob( testId: UUID,  jobId: UUID) -> Promise<DeliverabilitySimulationJobDto>
```

Pause deliverability simulation job

Pause a running simulation job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let jobId = 987 // UUID | 

// Pause deliverability simulation job
DeliverabilityTestControllerAPI.pauseDeliverabilitySimulationJob(testId: testId, jobId: jobId).then {
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
 **testId** | **UUID** |  | 
 **jobId** | **UUID** |  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pauseDeliverabilityTest**
```swift
    open class func pauseDeliverabilityTest( testId: UUID) -> Promise<DeliverabilityTestDto>
```

Pause deliverability/load test

Pause a RUNNING or SCHEDULED deliverability test.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Pause deliverability/load test
DeliverabilityTestControllerAPI.pauseDeliverabilityTest(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **pollDeliverabilityTestStatus**
```swift
    open class func pollDeliverabilityTestStatus( testId: UUID) -> Promise<DeliverabilityPollStatusResultDto>
```

Poll deliverability/load test status

Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Poll deliverability/load test status
DeliverabilityTestControllerAPI.pollDeliverabilityTestStatus(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilityPollStatusResultDto**](DeliverabilityPollStatusResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **resumeDeliverabilitySimulationJob**
```swift
    open class func resumeDeliverabilitySimulationJob( testId: UUID,  jobId: UUID) -> Promise<DeliverabilitySimulationJobDto>
```

Resume deliverability simulation job

Resume a paused simulation job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let jobId = 987 // UUID | 

// Resume deliverability simulation job
DeliverabilityTestControllerAPI.resumeDeliverabilitySimulationJob(testId: testId, jobId: jobId).then {
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
 **testId** | **UUID** |  | 
 **jobId** | **UUID** |  | 

### Return type

[**DeliverabilitySimulationJobDto**](DeliverabilitySimulationJobDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **startDeliverabilityTest**
```swift
    open class func startDeliverabilityTest( testId: UUID) -> Promise<DeliverabilityTestDto>
```

Start or resume deliverability/load test

Start a CREATED test or resume a PAUSED/SCHEDULED test.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Start or resume deliverability/load test
DeliverabilityTestControllerAPI.startDeliverabilityTest(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **stopDeliverabilityTest**
```swift
    open class func stopDeliverabilityTest( testId: UUID) -> Promise<DeliverabilityTestDto>
```

Stop deliverability/load test

Stop a deliverability test and mark it terminal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 

// Stop deliverability/load test
DeliverabilityTestControllerAPI.stopDeliverabilityTest(testId: testId).then {
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
 **testId** | **UUID** |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDeliverabilityTest**
```swift
    open class func updateDeliverabilityTest( testId: UUID,  updateDeliverabilityTestOptions: UpdateDeliverabilityTestOptions) -> Promise<DeliverabilityTestDto>
```

Update deliverability/load test

Update metadata, timeout, and expectations for a non-running non-terminal test.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let testId = 987 // UUID | 
let updateDeliverabilityTestOptions = UpdateDeliverabilityTestOptions(name: "name_example", _description: "_description_example", startAt: Date(), maxDurationSeconds: 123, clearMaxDuration: false, successThresholdPercent: 123, clearSuccessThreshold: false, expectations: [DeliverabilityExpectation(name: "name_example", minCount: 123, from: "from_example", to: "to_example", subject: "subject_example")]) // UpdateDeliverabilityTestOptions | 

// Update deliverability/load test
DeliverabilityTestControllerAPI.updateDeliverabilityTest(testId: testId, updateDeliverabilityTestOptions: updateDeliverabilityTestOptions).then {
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
 **testId** | **UUID** |  | 
 **updateDeliverabilityTestOptions** | [**UpdateDeliverabilityTestOptions**](UpdateDeliverabilityTestOptions) |  | 

### Return type

[**DeliverabilityTestDto**](DeliverabilityTestDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

