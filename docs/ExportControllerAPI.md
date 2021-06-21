# ExportControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportEntities**](ExportControllerAPI#exportentities) | **GET** /export | Export inboxes link callable via browser
[**getExportLink**](ExportControllerAPI#getexportlink) | **POST** /export | Get export link


# **exportEntities**
```swift
    open class func exportEntities( apiKey: String,  exportType: ExportType_exportEntities,  outputFormat: OutputFormat_exportEntities,  createdEarliestTime: Date? = nil,  createdOldestTime: Date? = nil,  excludePreviouslyExported: Bool? = nil,  filter: String? = nil,  listSeparatorToken: String? = nil) -> Promise<Data>
```

Export inboxes link callable via browser

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let apiKey = "apiKey_example" // String | apiKey
let exportType = "exportType_example" // String | exportType
let outputFormat = "outputFormat_example" // String | outputFormat
let createdEarliestTime = Date() // Date | createdEarliestTime (optional)
let createdOldestTime = Date() // Date | createdOldestTime (optional)
let excludePreviouslyExported = true // Bool | excludePreviouslyExported (optional)
let filter = "filter_example" // String | filter (optional)
let listSeparatorToken = "listSeparatorToken_example" // String | listSeparatorToken (optional)

// Export inboxes link callable via browser
ExportControllerAPI.exportEntities(apiKey: apiKey, exportType: exportType, outputFormat: outputFormat, createdEarliestTime: createdEarliestTime, createdOldestTime: createdOldestTime, excludePreviouslyExported: excludePreviouslyExported, filter: filter, listSeparatorToken: listSeparatorToken).then {
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
 **apiKey** | **String** | apiKey | 
 **exportType** | **String** | exportType | 
 **outputFormat** | **String** | outputFormat | 
 **createdEarliestTime** | **Date** | createdEarliestTime | [optional] 
 **createdOldestTime** | **Date** | createdOldestTime | [optional] 
 **excludePreviouslyExported** | **Bool** | excludePreviouslyExported | [optional] 
 **filter** | **String** | filter | [optional] 
 **listSeparatorToken** | **String** | listSeparatorToken | [optional] 

### Return type

**Data**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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

let exportType = "exportType_example" // String | exportType
let exportOptions = ExportOptions(outputFormat: "outputFormat_example", excludePreviouslyExported: false, createdEarliestTime: Date(), createdOldestTime: Date(), filter: "filter_example", listSeparatorToken: 123) // ExportOptions | exportOptions
let apiKey = "apiKey_example" // String | apiKey (optional)

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
 **exportType** | **String** | exportType | 
 **exportOptions** | [**ExportOptions**](ExportOptions) | exportOptions | 
 **apiKey** | **String** | apiKey | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

