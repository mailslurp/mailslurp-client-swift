# DevicePreviewsControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelDevicePreviewRun**](DevicePreviewsControllerAPI#canceldevicepreviewrun) | **POST** /emails/device-previews/{runId}/cancel | Cancel a running device preview run
[**createDevicePreviewFeedback**](DevicePreviewsControllerAPI#createdevicepreviewfeedback) | **POST** /emails/device-previews/feedback | Create device preview feedback
[**createDevicePreviewRun**](DevicePreviewsControllerAPI#createdevicepreviewrun) | **POST** /emails/{emailId}/device-previews | Create a new device preview run for an email
[**deleteDevicePreviewRun**](DevicePreviewsControllerAPI#deletedevicepreviewrun) | **DELETE** /emails/device-previews/{runId} | Delete local device preview run data
[**ensureDevicePreviewRun**](DevicePreviewsControllerAPI#ensuredevicepreviewrun) | **PUT** /emails/{emailId}/device-previews/latest | Return active run for email or create one when none exists
[**getDevicePreviewFeedback**](DevicePreviewsControllerAPI#getdevicepreviewfeedback) | **GET** /emails/device-previews/feedback/{feedbackId} | Get a single device preview feedback item
[**getDevicePreviewFeedbackItems**](DevicePreviewsControllerAPI#getdevicepreviewfeedbackitems) | **GET** /emails/device-previews/feedback | List device preview feedback
[**getDevicePreviewRun**](DevicePreviewsControllerAPI#getdevicepreviewrun) | **GET** /emails/device-previews/{runId} | Get device preview run status
[**getDevicePreviewRunProviderProgress**](DevicePreviewsControllerAPI#getdevicepreviewrunproviderprogress) | **GET** /emails/device-previews/{runId}/providers/{provider} | Get provider-level progress for a device preview run
[**getDevicePreviewRunResults**](DevicePreviewsControllerAPI#getdevicepreviewrunresults) | **GET** /emails/device-previews/{runId}/results | Get device preview run results
[**getDevicePreviewRunScreenshot**](DevicePreviewsControllerAPI#getdevicepreviewrunscreenshot) | **GET** /emails/device-previews/{runId}/screenshots/{screenshotId}/image | Get a seeded device preview screenshot image
[**getDevicePreviewRuns**](DevicePreviewsControllerAPI#getdevicepreviewruns) | **GET** /emails/{emailId}/device-previews | List previous device preview runs for an email
[**getDevicePreviewRunsForAccount**](DevicePreviewsControllerAPI#getdevicepreviewrunsforaccount) | **GET** /emails/device-previews | List previous device preview runs for account
[**getDevicePreviewRunsOffsetPaginated**](DevicePreviewsControllerAPI#getdevicepreviewrunsoffsetpaginated) | **GET** /emails/{emailId}/device-previews/offset-paginated | List previous device preview runs for an email in paginated form
[**updateDevicePreviewFeedback**](DevicePreviewsControllerAPI#updatedevicepreviewfeedback) | **PUT** /emails/device-previews/feedback/{feedbackId} | Update device preview feedback


# **cancelDevicePreviewRun**
```swift
    open class func cancelDevicePreviewRun( runId: UUID,  cancelDevicePreviewRunOptions: CancelDevicePreviewRunOptions? = nil) -> Promise<CancelDevicePreviewRunResult>
```

Cancel a running device preview run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let runId = 987 // UUID | 
let cancelDevicePreviewRunOptions = CancelDevicePreviewRunOptions(reason: "reason_example") // CancelDevicePreviewRunOptions |  (optional)

// Cancel a running device preview run
DevicePreviewsControllerAPI.cancelDevicePreviewRun(runId: runId, cancelDevicePreviewRunOptions: cancelDevicePreviewRunOptions).then {
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
 **runId** | **UUID** |  | 
 **cancelDevicePreviewRunOptions** | [**CancelDevicePreviewRunOptions**](CancelDevicePreviewRunOptions) |  | [optional] 

### Return type

[**CancelDevicePreviewRunResult**](CancelDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewFeedback**
```swift
    open class func createDevicePreviewFeedback( createDevicePreviewFeedbackOptions: CreateDevicePreviewFeedbackOptions) -> Promise<DevicePreviewFeedbackDto>
```

Create device preview feedback

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createDevicePreviewFeedbackOptions = CreateDevicePreviewFeedbackOptions(source: "source_example", category: "category_example", status: "status_example", rating: 123, runId: 123, targetId: 123, screenshotId: 123, provider: "provider_example", title: "title_example", comment: "comment_example", internalNote: "internalNote_example", sessionId: "sessionId_example", liveViewUrl: "liveViewUrl_example", metadata: "TODO") // CreateDevicePreviewFeedbackOptions | 

// Create device preview feedback
DevicePreviewsControllerAPI.createDevicePreviewFeedback(createDevicePreviewFeedbackOptions: createDevicePreviewFeedbackOptions).then {
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
 **createDevicePreviewFeedbackOptions** | [**CreateDevicePreviewFeedbackOptions**](CreateDevicePreviewFeedbackOptions) |  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createDevicePreviewRun**
```swift
    open class func createDevicePreviewRun( emailId: UUID,  createDevicePreviewOptions: CreateDevicePreviewOptions? = nil) -> Promise<CreateDevicePreviewRunResult>
```

Create a new device preview run for an email

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let createDevicePreviewOptions = CreateDevicePreviewOptions(providers: ["providers_example"], includeAllConfiguredProviders: false) // CreateDevicePreviewOptions |  (optional)

// Create a new device preview run for an email
DevicePreviewsControllerAPI.createDevicePreviewRun(emailId: emailId, createDevicePreviewOptions: createDevicePreviewOptions).then {
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
 **emailId** | **UUID** |  | 
 **createDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteDevicePreviewRun**
```swift
    open class func deleteDevicePreviewRun( runId: UUID) -> Promise<DeleteDevicePreviewRunResult>
```

Delete local device preview run data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let runId = 987 // UUID | 

// Delete local device preview run data
DevicePreviewsControllerAPI.deleteDevicePreviewRun(runId: runId).then {
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
 **runId** | **UUID** |  | 

### Return type

[**DeleteDevicePreviewRunResult**](DeleteDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **ensureDevicePreviewRun**
```swift
    open class func ensureDevicePreviewRun( emailId: UUID,  createDevicePreviewOptions: CreateDevicePreviewOptions? = nil) -> Promise<CreateDevicePreviewRunResult>
```

Return active run for email or create one when none exists

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let createDevicePreviewOptions = CreateDevicePreviewOptions(providers: ["providers_example"], includeAllConfiguredProviders: false) // CreateDevicePreviewOptions |  (optional)

// Return active run for email or create one when none exists
DevicePreviewsControllerAPI.ensureDevicePreviewRun(emailId: emailId, createDevicePreviewOptions: createDevicePreviewOptions).then {
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
 **emailId** | **UUID** |  | 
 **createDevicePreviewOptions** | [**CreateDevicePreviewOptions**](CreateDevicePreviewOptions) |  | [optional] 

### Return type

[**CreateDevicePreviewRunResult**](CreateDevicePreviewRunResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedback**
```swift
    open class func getDevicePreviewFeedback( feedbackId: UUID) -> Promise<DevicePreviewFeedbackDto>
```

Get a single device preview feedback item

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let feedbackId = 987 // UUID | 

// Get a single device preview feedback item
DevicePreviewsControllerAPI.getDevicePreviewFeedback(feedbackId: feedbackId).then {
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
 **feedbackId** | **UUID** |  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewFeedbackItems**
```swift
    open class func getDevicePreviewFeedbackItems( page: Int? = nil,  size: Int? = nil,  source: Source_getDevicePreviewFeedbackItems? = nil,  runId: UUID? = nil,  status: Status_getDevicePreviewFeedbackItems? = nil,  provider: Provider_getDevicePreviewFeedbackItems? = nil,  category: Category_getDevicePreviewFeedbackItems? = nil,  search: String? = nil) -> Promise<DevicePreviewFeedbackListDto>
```

List device preview feedback

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int |  (optional)
let size = 987 // Int |  (optional)
let source = "source_example" // String |  (optional)
let runId = 987 // UUID |  (optional)
let status = "status_example" // String |  (optional)
let provider = "provider_example" // String |  (optional)
let category = "category_example" // String |  (optional)
let search = "search_example" // String |  (optional)

// List device preview feedback
DevicePreviewsControllerAPI.getDevicePreviewFeedbackItems(page: page, size: size, source: source, runId: runId, status: status, provider: provider, category: category, search: search).then {
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
 **page** | **Int** |  | [optional] 
 **size** | **Int** |  | [optional] 
 **source** | **String** |  | [optional] 
 **runId** | **UUID** |  | [optional] 
 **status** | **String** |  | [optional] 
 **provider** | **String** |  | [optional] 
 **category** | **String** |  | [optional] 
 **search** | **String** |  | [optional] 

### Return type

[**DevicePreviewFeedbackListDto**](DevicePreviewFeedbackListDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRun**
```swift
    open class func getDevicePreviewRun( runId: UUID) -> Promise<DevicePreviewRunDto>
```

Get device preview run status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let runId = 987 // UUID | 

// Get device preview run status
DevicePreviewsControllerAPI.getDevicePreviewRun(runId: runId).then {
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
 **runId** | **UUID** |  | 

### Return type

[**DevicePreviewRunDto**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunProviderProgress**
```swift
    open class func getDevicePreviewRunProviderProgress( runId: UUID,  provider: Provider_getDevicePreviewRunProviderProgress) -> Promise<DevicePreviewProviderProgressDto>
```

Get provider-level progress for a device preview run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let runId = 987 // UUID | 
let provider = "provider_example" // String | 

// Get provider-level progress for a device preview run
DevicePreviewsControllerAPI.getDevicePreviewRunProviderProgress(runId: runId, provider: provider).then {
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
 **runId** | **UUID** |  | 
 **provider** | **String** |  | 

### Return type

[**DevicePreviewProviderProgressDto**](DevicePreviewProviderProgressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunResults**
```swift
    open class func getDevicePreviewRunResults( runId: UUID) -> Promise<DevicePreviewRunResultsDto>
```

Get device preview run results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let runId = 987 // UUID | 

// Get device preview run results
DevicePreviewsControllerAPI.getDevicePreviewRunResults(runId: runId).then {
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
 **runId** | **UUID** |  | 

### Return type

[**DevicePreviewRunResultsDto**](DevicePreviewRunResultsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunScreenshot**
```swift
    open class func getDevicePreviewRunScreenshot( runId: UUID,  screenshotId: UUID) -> Promise<Data>
```

Get a seeded device preview screenshot image

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let runId = 987 // UUID | 
let screenshotId = 987 // UUID | 

// Get a seeded device preview screenshot image
DevicePreviewsControllerAPI.getDevicePreviewRunScreenshot(runId: runId, screenshotId: screenshotId).then {
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
 **runId** | **UUID** |  | 
 **screenshotId** | **UUID** |  | 

### Return type

**Data**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRuns**
```swift
    open class func getDevicePreviewRuns( emailId: UUID,  limit: Int? = nil) -> Promise<[DevicePreviewRunDto]>
```

List previous device preview runs for an email

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let limit = 987 // Int |  (optional) (default to 50)

// List previous device preview runs for an email
DevicePreviewsControllerAPI.getDevicePreviewRuns(emailId: emailId, limit: limit).then {
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
 **emailId** | **UUID** |  | 
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

[**[DevicePreviewRunDto]**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsForAccount**
```swift
    open class func getDevicePreviewRunsForAccount( limit: Int? = nil) -> Promise<[DevicePreviewRunDto]>
```

List previous device preview runs for account

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let limit = 987 // Int |  (optional) (default to 50)

// List previous device preview runs for account
DevicePreviewsControllerAPI.getDevicePreviewRunsForAccount(limit: limit).then {
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
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

[**[DevicePreviewRunDto]**](DevicePreviewRunDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getDevicePreviewRunsOffsetPaginated**
```swift
    open class func getDevicePreviewRunsOffsetPaginated( emailId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getDevicePreviewRunsOffsetPaginated? = nil) -> Promise<PageDevicePreviewRunProjection>
```

List previous device preview runs for an email in paginated form

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let emailId = 987 // UUID | 
let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for paginated result list. (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .desc)

// List previous device preview runs for an email in paginated form
DevicePreviewsControllerAPI.getDevicePreviewRunsOffsetPaginated(emailId: emailId, page: page, size: size, sort: sort).then {
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
 **emailId** | **UUID** |  | 
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .desc]

### Return type

[**PageDevicePreviewRunProjection**](PageDevicePreviewRunProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateDevicePreviewFeedback**
```swift
    open class func updateDevicePreviewFeedback( feedbackId: UUID,  updateDevicePreviewFeedbackOptions: UpdateDevicePreviewFeedbackOptions) -> Promise<DevicePreviewFeedbackDto>
```

Update device preview feedback

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let feedbackId = 987 // UUID | 
let updateDevicePreviewFeedbackOptions = UpdateDevicePreviewFeedbackOptions(status: "status_example", rating: 123, title: "title_example", comment: "comment_example", internalNote: "internalNote_example", appendInternalNote: false, sessionId: "sessionId_example", liveViewUrl: "liveViewUrl_example", metadata: "TODO") // UpdateDevicePreviewFeedbackOptions | 

// Update device preview feedback
DevicePreviewsControllerAPI.updateDevicePreviewFeedback(feedbackId: feedbackId, updateDevicePreviewFeedbackOptions: updateDevicePreviewFeedbackOptions).then {
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
 **feedbackId** | **UUID** |  | 
 **updateDevicePreviewFeedbackOptions** | [**UpdateDevicePreviewFeedbackOptions**](UpdateDevicePreviewFeedbackOptions) |  | 

### Return type

[**DevicePreviewFeedbackDto**](DevicePreviewFeedbackDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

