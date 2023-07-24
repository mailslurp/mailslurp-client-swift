# TemplateControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTemplate**](TemplateControllerAPI#createtemplate) | **POST** /templates | Create a Template
[**deleteTemplate**](TemplateControllerAPI#deletetemplate) | **DELETE** /templates/{templateId} | Delete email template
[**getAllTemplates**](TemplateControllerAPI#getalltemplates) | **GET** /templates/paginated | List templates
[**getTemplate**](TemplateControllerAPI#gettemplate) | **GET** /templates/{templateId} | Get template
[**getTemplatePreviewHtml**](TemplateControllerAPI#gettemplatepreviewhtml) | **GET** /templates/{templateId}/preview/html | Get template preview HTML
[**getTemplatePreviewJson**](TemplateControllerAPI#gettemplatepreviewjson) | **GET** /templates/{templateId}/preview/json | Get template preview Json
[**getTemplates**](TemplateControllerAPI#gettemplates) | **GET** /templates | List templates
[**updateTemplate**](TemplateControllerAPI#updatetemplate) | **PUT** /templates/{templateId} | Update template


# **createTemplate**
```swift
    open class func createTemplate( createTemplateOptions: CreateTemplateOptions) -> Promise<TemplateDto>
```

Create a Template

Create an email template with variables for use with templated transactional emails.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createTemplateOptions = CreateTemplateOptions(name: "name_example", content: "content_example") // CreateTemplateOptions | 

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
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions) |  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTemplate**
```swift
    open class func deleteTemplate( templateId: UUID) -> Promise<Void>
```

Delete email template

Delete template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | Template ID

// Delete email template
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
 **templateId** | **UUID** | Template ID | 

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
    open class func getAllTemplates( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllTemplates? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageTemplateProjection>
```

List templates

Get all templates in paginated format

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index in list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size in list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)

// List templates
TemplateControllerAPI.getAllTemplates(page: page, size: size, sort: sort, since: since, before: before).then {
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
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplate**
```swift
    open class func getTemplate( templateId: UUID) -> Promise<TemplateDto>
```

Get template

Get email template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | Template ID

// Get template
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
 **templateId** | **UUID** | Template ID | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplatePreviewHtml**
```swift
    open class func getTemplatePreviewHtml( templateId: UUID) -> Promise<String>
```

Get template preview HTML

Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | Template ID

// Get template preview HTML
TemplateControllerAPI.getTemplatePreviewHtml(templateId: templateId).then {
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
 **templateId** | **UUID** | Template ID | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html;charset=utf-8, text/html

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplatePreviewJson**
```swift
    open class func getTemplatePreviewJson( templateId: UUID) -> Promise<TemplatePreview>
```

Get template preview Json

Get email template preview with passed template variables in JSON format. Pass template variables as query params.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | Template ID

// Get template preview Json
TemplateControllerAPI.getTemplatePreviewJson(templateId: templateId).then {
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
 **templateId** | **UUID** | Template ID | 

### Return type

[**TemplatePreview**](TemplatePreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTemplates**
```swift
    open class func getTemplates() -> Promise<[TemplateProjection]>
```

List templates

Get all templates

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// List templates
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
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateTemplate**
```swift
    open class func updateTemplate( templateId: UUID,  createTemplateOptions: CreateTemplateOptions) -> Promise<TemplateDto>
```

Update template

Update email template

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let templateId = 987 // UUID | Template ID
let createTemplateOptions = CreateTemplateOptions(name: "name_example", content: "content_example") // CreateTemplateOptions | 

// Update template
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
 **templateId** | **UUID** | Template ID | 
 **createTemplateOptions** | [**CreateTemplateOptions**](CreateTemplateOptions) |  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

