# ExportControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportEntities**](ExportControllerAPI#exportentities) | **GET** /export | Export inboxes link callable via browser
[**getExportLink**](ExportControllerAPI#getexportlink) | **POST** /export | Get export link


# **exportEntities**
```swift
    open class func exportEntities( exportType: ExportType_exportEntities,  apiKey: String,  outputFormat: OutputFormat_exportEntities,  filter: String? = nil,  listSeparatorToken: String? = nil,  excludePreviouslyExported: Bool? = nil,  createdEarliestTime: Date? = nil,  createdOldestTime: Date? = nil) -> Promise<[Data]>
```

Export inboxes link callable via browser

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let exportType = "exportType_example" // String | 
let apiKey = "apiKey_example" // String | 
let outputFormat = "outputFormat_example" // String | 
let filter = "filter_example" // String |  (optional)
let listSeparatorToken = "listSeparatorToken_example" // String |  (optional)
let excludePreviouslyExported = true // Bool |  (optional)
let createdEarliestTime = Date() // Date |  (optional)
let createdOldestTime = Date() // Date |  (optional)

// Export inboxes link callable via browser
ExportControllerAPI.exportEntities(exportType: exportType, apiKey: apiKey, outputFormat: outputFormat, filter: filter, listSeparatorToken: listSeparatorToken, excludePreviouslyExported: excludePreviouslyExported, createdEarliestTime: createdEarliestTime, createdOldestTime: createdOldestTime).then {
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
 **exportType** | **String** |  | 
 **apiKey** | **String** |  | 
 **outputFormat** | **String** |  | 
 **filter** | **String** |  | [optional] 
 **listSeparatorToken** | **String** |  | [optional] 
 **excludePreviouslyExported** | **Bool** |  | [optional] 
 **createdEarliestTime** | **Date** |  | [optional] 
 **createdOldestTime** | **Date** |  | [optional] 

### Return type

**[Data]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getExportLink**
```swift
    open class func getExportLink( exportType: ExportType_getExportLink,  exportOptions: ExportOptions,  apiKey: String? = nil) -> Promise<ExportLink>
```

Get export link

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let exportType = "exportType_example" // String | 
let exportOptions = ExportOptions(outputFormat: "outputFormat_example", excludePreviouslyExported: false, createdEarliestTime: Date(), createdOldestTime: Date(), filter: "filter_example", listSeparatorToken: "listSeparatorToken_example") // ExportOptions | 
let apiKey = "apiKey_example" // String |  (optional)

// Get export link
ExportControllerAPI.getExportLink(exportType: exportType, exportOptions: exportOptions, apiKey: apiKey).then {
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
 **exportType** | **String** |  | 
 **exportOptions** | [**ExportOptions**](ExportOptions) |  | 
 **apiKey** | **String** |  | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

