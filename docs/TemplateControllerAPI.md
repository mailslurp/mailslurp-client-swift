# TemplateControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplateControllerAPI#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](TemplateControllerAPI#deletetemplate) | **DELETE** /templates/{templateId} | Delete Template
[**getAllTemplates**](TemplateControllerAPI#getalltemplates) | **GET** /templates/paginated | Get all Templates in paginated format
[**getTemplate**](TemplateControllerAPI#gettemplate) | **GET** /templates/{templateId} | Get Template
[**getTemplates**](TemplateControllerAPI#gettemplates) | **GET** /templates | Get all Templates
[**updateTemplate**](TemplateControllerAPI#updatetemplate) | **PUT** /templates/{templateId} | Update a Template


# **createTemplate**
```swift
    open class func createTemplate( createTemplateOptions: CreateTemplateOptions) -> Promise<TemplateDto>
```

Create a Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createTemplateOptions = CreateTemplateOptions(name: "name_example", content: "content_example") // CreateTemplateOptions | createTemplateOptions

// Create a Template
TemplateControllerAPI.createTemplate(createTemplateOptions: createTemplateOptions).then {
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
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions) | createTemplateOptions | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTemplate**
```swift
    open class func deleteTemplate( templateId: UUID) -> Promise<Void>
```

Delete Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | templateId

// Delete Template
TemplateControllerAPI.deleteTemplate(templateId: templateId).then {
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
 **templateId** | [**UUID**]() | templateId | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllTemplates**
```swift
    open class func getAllTemplates( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllTemplates? = nil) -> Promise<PageTemplateProjection>
```

Get all Templates in paginated format

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get all Templates in paginated format
TemplateControllerAPI.getAllTemplates(page: page, size: size, sort: sort).then {
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
 **page** | **Int** | Optional page index in list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplate**
```swift
    open class func getTemplate( templateId: UUID) -> Promise<TemplateDto>
```

Get Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | templateId

// Get Template
TemplateControllerAPI.getTemplate(templateId: templateId).then {
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
 **templateId** | [**UUID**]() | templateId | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplates**
```swift
    open class func getTemplates() -> Promise<[TemplateProjection]>
```

Get all Templates

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Get all Templates
TemplateControllerAPI.getTemplates().then {
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

[**[TemplateProjection]**](TemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateTemplate**
```swift
    open class func updateTemplate( templateId: UUID,  createTemplateOptions: CreateTemplateOptions) -> Promise<TemplateDto>
```

Update a Template

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | templateId
let createTemplateOptions = CreateTemplateOptions(name: "name_example", content: "content_example") // CreateTemplateOptions | createTemplateOptions

// Update a Template
TemplateControllerAPI.updateTemplate(templateId: templateId, createTemplateOptions: createTemplateOptions).then {
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
 **templateId** | [**UUID**]() | templateId | 
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions) | createTemplateOptions | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

