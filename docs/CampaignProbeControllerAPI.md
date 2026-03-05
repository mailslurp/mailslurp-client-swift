# CampaignProbeControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCampaignProbe**](CampaignProbeControllerAPI#createcampaignprobe) | **POST** /campaign-probe/probes | Create campaign probe
[**deleteCampaignProbe**](CampaignProbeControllerAPI#deletecampaignprobe) | **DELETE** /campaign-probe/probes/{probeId} | Delete campaign probe
[**getCampaignProbe**](CampaignProbeControllerAPI#getcampaignprobe) | **GET** /campaign-probe/probes/{probeId} | Get campaign probe
[**getCampaignProbeInsights**](CampaignProbeControllerAPI#getcampaignprobeinsights) | **GET** /campaign-probe/probes/{probeId}/insights | Get campaign probe insights
[**getCampaignProbeRuns**](CampaignProbeControllerAPI#getcampaignproberuns) | **GET** /campaign-probe/probes/{probeId}/runs | List campaign probe runs
[**getCampaignProbeSeries**](CampaignProbeControllerAPI#getcampaignprobeseries) | **GET** /campaign-probe/probes/{probeId}/series | Get campaign probe trend series
[**getCampaignProbes**](CampaignProbeControllerAPI#getcampaignprobes) | **GET** /campaign-probe/probes | List campaign probes
[**runCampaignProbeNow**](CampaignProbeControllerAPI#runcampaignprobenow) | **POST** /campaign-probe/probes/{probeId}/run-now | Run campaign probe now
[**runDueCampaignProbes**](CampaignProbeControllerAPI#runduecampaignprobes) | **POST** /campaign-probe/probes/run-due | Run due campaign probes for user
[**updateCampaignProbe**](CampaignProbeControllerAPI#updatecampaignprobe) | **PUT** /campaign-probe/probes/{probeId} | Update campaign probe


# **createCampaignProbe**
```swift
    open class func createCampaignProbe( createCampaignProbeOptions: CreateCampaignProbeOptions) -> Promise<CampaignProbeDto>
```

Create campaign probe

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createCampaignProbeOptions = CreateCampaignProbeOptions(name: "name_example", enabled: true, intervalSeconds: 123, schedulingEnabled: true) // CreateCampaignProbeOptions | 

// Create campaign probe
CampaignProbeControllerAPI.createCampaignProbe(createCampaignProbeOptions: createCampaignProbeOptions).then {
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
 **createCampaignProbeOptions** | [**CreateCampaignProbeOptions**](CreateCampaignProbeOptions) |  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteCampaignProbe**
```swift
    open class func deleteCampaignProbe( probeId: UUID) -> Promise<Void>
```

Delete campaign probe

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 

// Delete campaign probe
CampaignProbeControllerAPI.deleteCampaignProbe(probeId: probeId).then {
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
 **probeId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbe**
```swift
    open class func getCampaignProbe( probeId: UUID) -> Promise<CampaignProbeDto>
```

Get campaign probe

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 

// Get campaign probe
CampaignProbeControllerAPI.getCampaignProbe(probeId: probeId).then {
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
 **probeId** | **UUID** |  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeInsights**
```swift
    open class func getCampaignProbeInsights( probeId: UUID,  since: Date? = nil,  before: Date? = nil) -> Promise<CampaignProbeInsightsDto>
```

Get campaign probe insights

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)

// Get campaign probe insights
CampaignProbeControllerAPI.getCampaignProbeInsights(probeId: probeId, since: since, before: before).then {
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
 **probeId** | **UUID** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 

### Return type

[**CampaignProbeInsightsDto**](CampaignProbeInsightsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeRuns**
```swift
    open class func getCampaignProbeRuns( probeId: UUID,  since: Date? = nil,  before: Date? = nil,  status: Status_getCampaignProbeRuns? = nil,  limit: Int? = nil) -> Promise<[CampaignProbeRunDto]>
```

List campaign probe runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let status = "status_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// List campaign probe runs
CampaignProbeControllerAPI.getCampaignProbeRuns(probeId: probeId, since: since, before: before, status: status, limit: limit).then {
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
 **probeId** | **UUID** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **status** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

[**[CampaignProbeRunDto]**](CampaignProbeRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbeSeries**
```swift
    open class func getCampaignProbeSeries( probeId: UUID,  since: Date? = nil,  before: Date? = nil,  bucket: Bucket_getCampaignProbeSeries? = nil) -> Promise<CampaignProbeSeriesDto>
```

Get campaign probe trend series

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 
let since = Date() // Date |  (optional)
let before = Date() // Date |  (optional)
let bucket = "bucket_example" // String |  (optional) (default to .day)

// Get campaign probe trend series
CampaignProbeControllerAPI.getCampaignProbeSeries(probeId: probeId, since: since, before: before, bucket: bucket).then {
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
 **probeId** | **UUID** |  | 
 **since** | **Date** |  | [optional] 
 **before** | **Date** |  | [optional] 
 **bucket** | **String** |  | [optional] [default to .day]

### Return type

[**CampaignProbeSeriesDto**](CampaignProbeSeriesDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getCampaignProbes**
```swift
    open class func getCampaignProbes() -> Promise<[CampaignProbeDto]>
```

List campaign probes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// List campaign probes
CampaignProbeControllerAPI.getCampaignProbes().then {
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

[**[CampaignProbeDto]**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runCampaignProbeNow**
```swift
    open class func runCampaignProbeNow( probeId: UUID,  createCampaignProbeRunOptions: CreateCampaignProbeRunOptions) -> Promise<CampaignProbeRunNowResult>
```

Run campaign probe now

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 
let createCampaignProbeRunOptions = CreateCampaignProbeRunOptions(fromAddress: "fromAddress_example", subject: "subject_example", recipient: "recipient_example", messageId: "messageId_example", htmlBody: "htmlBody_example", textBody: "textBody_example") // CreateCampaignProbeRunOptions | 

// Run campaign probe now
CampaignProbeControllerAPI.runCampaignProbeNow(probeId: probeId, createCampaignProbeRunOptions: createCampaignProbeRunOptions).then {
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
 **probeId** | **UUID** |  | 
 **createCampaignProbeRunOptions** | [**CreateCampaignProbeRunOptions**](CreateCampaignProbeRunOptions) |  | 

### Return type

[**CampaignProbeRunNowResult**](CampaignProbeRunNowResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **runDueCampaignProbes**
```swift
    open class func runDueCampaignProbes( maxRuns: Int? = nil) -> Promise<CampaignProbeRunDueResult>
```

Run due campaign probes for user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let maxRuns = 987 // Int |  (optional)

// Run due campaign probes for user
CampaignProbeControllerAPI.runDueCampaignProbes(maxRuns: maxRuns).then {
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

[**CampaignProbeRunDueResult**](CampaignProbeRunDueResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateCampaignProbe**
```swift
    open class func updateCampaignProbe( probeId: UUID,  updateCampaignProbeOptions: UpdateCampaignProbeOptions) -> Promise<CampaignProbeDto>
```

Update campaign probe

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let probeId = 987 // UUID | 
let updateCampaignProbeOptions = UpdateCampaignProbeOptions(name: "name_example", enabled: false, intervalSeconds: 123, schedulingEnabled: false) // UpdateCampaignProbeOptions | 

// Update campaign probe
CampaignProbeControllerAPI.updateCampaignProbe(probeId: probeId, updateCampaignProbeOptions: updateCampaignProbeOptions).then {
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
 **probeId** | **UUID** |  | 
 **updateCampaignProbeOptions** | [**UpdateCampaignProbeOptions**](UpdateCampaignProbeOptions) |  | 

### Return type

[**CampaignProbeDto**](CampaignProbeDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

