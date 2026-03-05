# DomainMonitorControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDomainMonitor**](DomainMonitorControllerAPI#createdomainmonitor) | **POST** /domain-monitor/monitors | Create domain monitor
[**createDomainMonitorAlertSink**](DomainMonitorControllerAPI#createdomainmonitoralertsink) | **POST** /domain-monitor/monitors/{monitorId}/alert-sinks | Create alert sink for monitor
[**deleteDomainMonitor**](DomainMonitorControllerAPI#deletedomainmonitor) | **DELETE** /domain-monitor/monitors/{monitorId} | Delete domain monitor
[**deleteDomainMonitorAlertSink**](DomainMonitorControllerAPI#deletedomainmonitoralertsink) | **DELETE** /domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId} | Delete monitor alert sink
[**getDomainMonitor**](DomainMonitorControllerAPI#getdomainmonitor) | **GET** /domain-monitor/monitors/{monitorId} | Get domain monitor
[**getDomainMonitorAlertSinks**](DomainMonitorControllerAPI#getdomainmonitoralertsinks) | **GET** /domain-monitor/monitors/{monitorId}/alert-sinks | List alert sinks for monitor
[**getDomainMonitorInsights**](DomainMonitorControllerAPI#getdomainmonitorinsights) | **GET** /domain-monitor/monitors/{monitorId}/insights | Get monitor insights
[**getDomainMonitorRuns**](DomainMonitorControllerAPI#getdomainmonitorruns) | **GET** /domain-monitor/monitors/{monitorId}/runs | List monitor runs
[**getDomainMonitorSeries**](DomainMonitorControllerAPI#getdomainmonitorseries) | **GET** /domain-monitor/monitors/{monitorId}/series | Get monitor trend series
[**getDomainMonitors**](DomainMonitorControllerAPI#getdomainmonitors) | **GET** /domain-monitor/monitors | List domain monitors
[**runDomainMonitorNow**](DomainMonitorControllerAPI#rundomainmonitornow) | **POST** /domain-monitor/monitors/{monitorId}/run-now | Run monitor now
[**runDueDomainMonitors**](DomainMonitorControllerAPI#runduedomainmonitors) | **POST** /domain-monitor/monitors/run-due | Run due monitors for user
[**updateDomainMonitor**](DomainMonitorControllerAPI#updatedomainmonitor) | **PUT** /domain-monitor/monitors/{monitorId} | Update domain monitor


# **createDomainMonitor**
```swift
    open class func createDomainMonitor( createDomainMonitorOptions: CreateDomainMonitorOptions) -> Promise<DomainMonitorDto>
```

Create domain monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createDomainMonitorOptions = CreateDomainMonitorOptions(domain: "domain_example", name: "name_example", intervalSeconds: 123, enabled: false, schedulingEnabled: false) // CreateDomainMonitorOptions | 

// Create domain monitor
DomainMonitorControllerAPI.createDomainMonitor(createDomainMonitorOptions: createDomainMonitorOptions).then {
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
 **createDomainMonitorOptions** | [**CreateDomainMonitorOptions**](CreateDomainMonitorOptions) |  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDomainMonitorAlertSink**
```swift
    open class func createDomainMonitorAlertSink( monitorId: UUID,  createDomainMonitorAlertSinkOptions: CreateDomainMonitorAlertSinkOptions) -> Promise<DomainMonitorAlertSinkDto>
```

Create alert sink for monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 
let createDomainMonitorAlertSinkOptions = CreateDomainMonitorAlertSinkOptions(type: "type_example", target: "target_example", severityThreshold: "severityThreshold_example", enabled: false) // CreateDomainMonitorAlertSinkOptions | 

// Create alert sink for monitor
DomainMonitorControllerAPI.createDomainMonitorAlertSink(monitorId: monitorId, createDomainMonitorAlertSinkOptions: createDomainMonitorAlertSinkOptions).then {
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
 **monitorId** | **UUID** |  | 
 **createDomainMonitorAlertSinkOptions** | [**CreateDomainMonitorAlertSinkOptions**](CreateDomainMonitorAlertSinkOptions) |  | 

### Return type

[**DomainMonitorAlertSinkDto**](DomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitor**
```swift
    open class func deleteDomainMonitor( monitorId: UUID) -> Promise<Void>
```

Delete domain monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 

// Delete domain monitor
DomainMonitorControllerAPI.deleteDomainMonitor(monitorId: monitorId).then {
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
 **monitorId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDomainMonitorAlertSink**
```swift
    open class func deleteDomainMonitorAlertSink( monitorId: UUID,  sinkId: UUID) -> Promise<Void>
```

Delete monitor alert sink

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 
let sinkId = 987 // UUID | 

// Delete monitor alert sink
DomainMonitorControllerAPI.deleteDomainMonitorAlertSink(monitorId: monitorId, sinkId: sinkId).then {
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
 **monitorId** | **UUID** |  | 
 **sinkId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitor**
```swift
    open class func getDomainMonitor( monitorId: UUID) -> Promise<DomainMonitorDto>
```

Get domain monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 

// Get domain monitor
DomainMonitorControllerAPI.getDomainMonitor(monitorId: monitorId).then {
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
 **monitorId** | **UUID** |  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorAlertSinks**
```swift
    open class func getDomainMonitorAlertSinks( monitorId: UUID) -> Promise<[DomainMonitorAlertSinkDto]>
```

List alert sinks for monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 

// List alert sinks for monitor
DomainMonitorControllerAPI.getDomainMonitorAlertSinks(monitorId: monitorId).then {
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
 **monitorId** | **UUID** |  | 

### Return type

[**[DomainMonitorAlertSinkDto]**](DomainMonitorAlertSinkDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorInsights**
```swift
    open class func getDomainMonitorInsights( monitorId: UUID,  since: Date? = nil,  before: Date? = nil) -> Promise<DomainMonitorInsightsDto>
```

Get monitor insights

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)

// Get monitor insights
DomainMonitorControllerAPI.getDomainMonitorInsights(monitorId: monitorId, since: since, before: before).then {
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
 **monitorId** | **UUID** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 

### Return type

[**DomainMonitorInsightsDto**](DomainMonitorInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorRuns**
```swift
    open class func getDomainMonitorRuns( monitorId: UUID,  since: Date? = nil,  before: Date? = nil,  status: Status_getDomainMonitorRuns? = nil,  limit: Int? = nil) -> Promise<[DomainMonitorRunDto]>
```

List monitor runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let status = "status_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List monitor runs
DomainMonitorControllerAPI.getDomainMonitorRuns(monitorId: monitorId, since: since, before: before, status: status, limit: limit).then {
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
 **monitorId** | **UUID** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **status** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

[**[DomainMonitorRunDto]**](DomainMonitorRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitorSeries**
```swift
    open class func getDomainMonitorSeries( monitorId: UUID,  since: Date? = nil,  before: Date? = nil,  bucket: Bucket_getDomainMonitorSeries? = nil) -> Promise<DomainMonitorSeriesDto>
```

Get monitor trend series

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let bucket = "bucket_example" // String |  (optional) (default to .day)

// Get monitor trend series
DomainMonitorControllerAPI.getDomainMonitorSeries(monitorId: monitorId, since: since, before: before, bucket: bucket).then {
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
 **monitorId** | **UUID** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **bucket** | **String** |  | [optional] [default to .day]

### Return type

[**DomainMonitorSeriesDto**](DomainMonitorSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDomainMonitors**
```swift
    open class func getDomainMonitors() -> Promise<[DomainMonitorDto]>
```

List domain monitors

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// List domain monitors
DomainMonitorControllerAPI.getDomainMonitors().then {
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

[**[DomainMonitorDto]**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDomainMonitorNow**
```swift
    open class func runDomainMonitorNow( monitorId: UUID) -> Promise<DomainMonitorRunNowResult>
```

Run monitor now

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 

// Run monitor now
DomainMonitorControllerAPI.runDomainMonitorNow(monitorId: monitorId).then {
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
 **monitorId** | **UUID** |  | 

### Return type

[**DomainMonitorRunNowResult**](DomainMonitorRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDueDomainMonitors**
```swift
    open class func runDueDomainMonitors( maxRuns: Int? = nil) -> Promise<DomainMonitorRunDueResult>
```

Run due monitors for user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let maxRuns = 987 // Int |  (optional)

// Run due monitors for user
DomainMonitorControllerAPI.runDueDomainMonitors(maxRuns: maxRuns).then {
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
 **maxRuns** | **Int** |  | [optional] 

### Return type

[**DomainMonitorRunDueResult**](DomainMonitorRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDomainMonitor**
```swift
    open class func updateDomainMonitor( monitorId: UUID,  updateDomainMonitorOptions: UpdateDomainMonitorOptions) -> Promise<DomainMonitorDto>
```

Update domain monitor

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let monitorId = 987 // UUID | 
let updateDomainMonitorOptions = UpdateDomainMonitorOptions(name: "name_example", intervalSeconds: 123, enabled: false, schedulingEnabled: false) // UpdateDomainMonitorOptions | 

// Update domain monitor
DomainMonitorControllerAPI.updateDomainMonitor(monitorId: monitorId, updateDomainMonitorOptions: updateDomainMonitorOptions).then {
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
 **monitorId** | **UUID** |  | 
 **updateDomainMonitorOptions** | [**UpdateDomainMonitorOptions**](UpdateDomainMonitorOptions) |  | 

### Return type

[**DomainMonitorDto**](DomainMonitorDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

