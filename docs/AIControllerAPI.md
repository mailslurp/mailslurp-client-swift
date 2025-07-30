# AIControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransformer**](AIControllerAPI#createtransformer) | **POST** /ai/transformer | Create a transformer for reuse in automations
[**createTransformerMappings**](AIControllerAPI#createtransformermappings) | **POST** /ai/transformer/mappings | Create transformer mapping
[**deleteAllTransformerMappings**](AIControllerAPI#deletealltransformermappings) | **DELETE** /ai/transformer/mappings | Delete all transformer mapping
[**deleteTransformer**](AIControllerAPI#deletetransformer) | **DELETE** /ai/transformer/{id} | Delete a transformer
[**deleteTransformerMapping**](AIControllerAPI#deletetransformermapping) | **DELETE** /ai/transformer/mappings/{id} | Delete transformer mapping
[**deleteTransformers**](AIControllerAPI#deletetransformers) | **DELETE** /ai/transformer | Delete all transformers
[**generateStructuredContentFromAttachment**](AIControllerAPI#generatestructuredcontentfromattachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**generateStructuredContentFromEmail**](AIControllerAPI#generatestructuredcontentfromemail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**generateStructuredContentFromSms**](AIControllerAPI#generatestructuredcontentfromsms) | **POST** /ai/structured-content/sms | Generate structured content for a TXT message
[**getTransformer**](AIControllerAPI#gettransformer) | **GET** /ai/transformer/{id} | Get a transformer
[**getTransformerMapping**](AIControllerAPI#gettransformermapping) | **GET** /ai/transformer/mappings/{id} | Get transformer mapping
[**getTransformerMappings**](AIControllerAPI#gettransformermappings) | **GET** /ai/transformer/mappings | Get transformer mappings
[**getTransformerResult**](AIControllerAPI#gettransformerresult) | **GET** /ai/transformer/results/{id} | Get transformer result
[**getTransformerResults**](AIControllerAPI#gettransformerresults) | **GET** /ai/transformer/results | Get transformer results
[**getTransformers**](AIControllerAPI#gettransformers) | **GET** /ai/transformer | List transformers
[**invokeTransformer**](AIControllerAPI#invoketransformer) | **POST** /ai/transformer/invoke | Invoke a transformer
[**validateStructuredOutputSchema**](AIControllerAPI#validatestructuredoutputschema) | **POST** /ai/structured-content/validate | Validate structured content schema


# **createTransformer**
```swift
    open class func createTransformer( aITransformCreateOptions: AITransformCreateOptions) -> Promise<AITransformDto>
```

Create a transformer for reuse in automations

Save an AI transform instructions and schema for use with webhooks and automations

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aITransformCreateOptions = AITransformCreateOptions(name: "name_example", conditions: ["conditions_example"], instructions: ["instructions_example"], outputSchema: StructuredOutputSchema(anyOf: [nil], _default: 123, _description: "_description_example", enumValues: ["enumValues_example"], example: 123, format: "format_example", items: nil, maxItems: 123, minItems: 123, maxLength: 123, minLength: 123, pattern: "pattern_example", properties: "TODO", propertyOrdering: ["propertyOrdering_example"], _required: ["_required_example"], maxProperties: 123, minProperties: 123, maximum: 123, minimum: 123, nullable: false, title: "title_example", type: "type_example"), outputSchemaId: 123, extractPrompt: "extractPrompt_example") // AITransformCreateOptions | 

// Create a transformer for reuse in automations
AIControllerAPI.createTransformer(aITransformCreateOptions: aITransformCreateOptions).then {
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
 **aITransformCreateOptions** | [**AITransformCreateOptions**](AITransformCreateOptions) |  | 

### Return type

[**AITransformDto**](AITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createTransformerMappings**
```swift
    open class func createTransformerMappings( createAITransformerMappingOptions: CreateAITransformerMappingOptions) -> Promise<AITransformMappingDto>
```

Create transformer mapping

Create AI transformer mappings to other entities

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let createAITransformerMappingOptions = CreateAITransformerMappingOptions(name: "name_example", aiTransformId: 123, entityId: 123, entityType: "entityType_example", contentSelector: "contentSelector_example", triggerSelector: "triggerSelector_example", spreadRootArray: false) // CreateAITransformerMappingOptions | 

// Create transformer mapping
AIControllerAPI.createTransformerMappings(createAITransformerMappingOptions: createAITransformerMappingOptions).then {
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
 **createAITransformerMappingOptions** | [**CreateAITransformerMappingOptions**](CreateAITransformerMappingOptions) |  | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllTransformerMappings**
```swift
    open class func deleteAllTransformerMappings() -> Promise<Void>
```

Delete all transformer mapping

Delete all AI transformer mappings

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all transformer mapping
AIControllerAPI.deleteAllTransformerMappings().then {
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

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformer**
```swift
    open class func deleteTransformer( _id: UUID) -> Promise<Void>
```

Delete a transformer

Delete an AI transformer and schemas by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Delete a transformer
AIControllerAPI.deleteTransformer(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformerMapping**
```swift
    open class func deleteTransformerMapping( _id: UUID) -> Promise<Void>
```

Delete transformer mapping

Delete an AI transformer mapping

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of transform mapping

// Delete transformer mapping
AIControllerAPI.deleteTransformerMapping(_id: _id).then {
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
 **_id** | **UUID** | ID of transform mapping | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteTransformers**
```swift
    open class func deleteTransformers() -> Promise<Void>
```

Delete all transformers

Delete all AI transformers and schemas

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all transformers
AIControllerAPI.deleteTransformers().then {
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

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromAttachment**
```swift
    open class func generateStructuredContentFromAttachment( generateStructuredContentAttachmentOptions: GenerateStructuredContentAttachmentOptions) -> Promise<StructuredContentResultDto>
```

Generate structured content for an attachment

Use output schemas to extract data from an attachment using AI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateStructuredContentAttachmentOptions = GenerateStructuredContentAttachmentOptions(attachmentId: "attachmentId_example", instructions: "instructions_example", outputSchema: StructuredOutputSchema(anyOf: [nil], _default: 123, _description: "_description_example", enumValues: ["enumValues_example"], example: 123, format: "format_example", items: nil, maxItems: 123, minItems: 123, maxLength: 123, minLength: 123, pattern: "pattern_example", properties: "TODO", propertyOrdering: ["propertyOrdering_example"], _required: ["_required_example"], maxProperties: 123, minProperties: 123, maximum: 123, minimum: 123, nullable: false, title: "title_example", type: "type_example"), transformId: 123, emailId: 123) // GenerateStructuredContentAttachmentOptions | 

// Generate structured content for an attachment
AIControllerAPI.generateStructuredContentFromAttachment(generateStructuredContentAttachmentOptions: generateStructuredContentAttachmentOptions).then {
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
 **generateStructuredContentAttachmentOptions** | [**GenerateStructuredContentAttachmentOptions**](GenerateStructuredContentAttachmentOptions) |  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromEmail**
```swift
    open class func generateStructuredContentFromEmail( generateStructuredContentEmailOptions: GenerateStructuredContentEmailOptions) -> Promise<StructuredContentResultDto>
```

Generate structured content for an email

Use output schemas to extract data from an email using AI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateStructuredContentEmailOptions = GenerateStructuredContentEmailOptions(emailId: 123, contentSelector: "contentSelector_example", instructions: "instructions_example", outputSchema: StructuredOutputSchema(anyOf: [nil], _default: 123, _description: "_description_example", enumValues: ["enumValues_example"], example: 123, format: "format_example", items: nil, maxItems: 123, minItems: 123, maxLength: 123, minLength: 123, pattern: "pattern_example", properties: "TODO", propertyOrdering: ["propertyOrdering_example"], _required: ["_required_example"], maxProperties: 123, minProperties: 123, maximum: 123, minimum: 123, nullable: false, title: "title_example", type: "type_example"), transformId: 123) // GenerateStructuredContentEmailOptions | 

// Generate structured content for an email
AIControllerAPI.generateStructuredContentFromEmail(generateStructuredContentEmailOptions: generateStructuredContentEmailOptions).then {
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
 **generateStructuredContentEmailOptions** | [**GenerateStructuredContentEmailOptions**](GenerateStructuredContentEmailOptions) |  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **generateStructuredContentFromSms**
```swift
    open class func generateStructuredContentFromSms( generateStructuredContentSmsOptions: GenerateStructuredContentSmsOptions) -> Promise<StructuredContentResultDto>
```

Generate structured content for a TXT message

Use output schemas to extract data from an SMS using AI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let generateStructuredContentSmsOptions = GenerateStructuredContentSmsOptions(smsId: 123, instructions: "instructions_example", outputSchema: StructuredOutputSchema(anyOf: [nil], _default: 123, _description: "_description_example", enumValues: ["enumValues_example"], example: 123, format: "format_example", items: nil, maxItems: 123, minItems: 123, maxLength: 123, minLength: 123, pattern: "pattern_example", properties: "TODO", propertyOrdering: ["propertyOrdering_example"], _required: ["_required_example"], maxProperties: 123, minProperties: 123, maximum: 123, minimum: 123, nullable: false, title: "title_example", type: "type_example"), transformId: 123) // GenerateStructuredContentSmsOptions | 

// Generate structured content for a TXT message
AIControllerAPI.generateStructuredContentFromSms(generateStructuredContentSmsOptions: generateStructuredContentSmsOptions).then {
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
 **generateStructuredContentSmsOptions** | [**GenerateStructuredContentSmsOptions**](GenerateStructuredContentSmsOptions) |  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformer**
```swift
    open class func getTransformer( _id: UUID) -> Promise<AITransformDto>
```

Get a transformer

Get AI transformer and schemas by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | 

// Get a transformer
AIControllerAPI.getTransformer(_id: _id).then {
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
 **_id** | **UUID** |  | 

### Return type

[**AITransformDto**](AITransformDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerMapping**
```swift
    open class func getTransformerMapping( _id: UUID) -> Promise<AITransformMappingDto>
```

Get transformer mapping

Get an AI transformer mapping

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of transform mapping

// Get transformer mapping
AIControllerAPI.getTransformerMapping(_id: _id).then {
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
 **_id** | **UUID** | ID of transform mapping | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerMappings**
```swift
    open class func getTransformerMappings( aiTransformId: UUID? = nil,  entityId: UUID? = nil,  entityType: EntityType_getTransformerMappings? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getTransformerMappings? = nil) -> Promise<PageAITransformMappingProjection>
```

Get transformer mappings

Get AI transformer mappings to other entities

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aiTransformId = 987 // UUID |  (optional)
let entityId = 987 // UUID |  (optional)
let entityType = "entityType_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get transformer mappings
AIControllerAPI.getTransformerMappings(aiTransformId: aiTransformId, entityId: entityId, entityType: entityType, page: page, size: size, sort: sort).then {
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
 **aiTransformId** | **UUID** |  | [optional] 
 **entityId** | **UUID** |  | [optional] 
 **entityType** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** | Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageAITransformMappingProjection**](PageAITransformMappingProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerResult**
```swift
    open class func getTransformerResult( _id: UUID) -> Promise<AITransformResultDto>
```

Get transformer result

Get AI transformer result

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let _id = 987 // UUID | ID of transform result

// Get transformer result
AIControllerAPI.getTransformerResult(_id: _id).then {
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
 **_id** | **UUID** | ID of transform result | 

### Return type

[**AITransformResultDto**](AITransformResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformerResults**
```swift
    open class func getTransformerResults( aiTransformId: UUID? = nil,  aiTransformMappingId: UUID? = nil,  entityId: UUID? = nil,  entityType: EntityType_getTransformerResults? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getTransformerResults? = nil) -> Promise<PageAITransformResultProjection>
```

Get transformer results

Get AI transformer results

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let aiTransformId = 987 // UUID |  (optional)
let aiTransformMappingId = 987 // UUID |  (optional)
let entityId = 987 // UUID |  (optional)
let entityType = "entityType_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int | Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)

// Get transformer results
AIControllerAPI.getTransformerResults(aiTransformId: aiTransformId, aiTransformMappingId: aiTransformMappingId, entityId: entityId, entityType: entityType, page: page, size: size, sort: sort).then {
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
 **aiTransformId** | **UUID** |  | [optional] 
 **aiTransformMappingId** | **UUID** |  | [optional] 
 **entityId** | **UUID** |  | [optional] 
 **entityType** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** | Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]

### Return type

[**PageAITransformResultProjection**](PageAITransformResultProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTransformers**
```swift
    open class func getTransformers( page: Int? = nil,  size: Int? = nil,  sort: Sort_getTransformers? = nil,  include: [UUID]? = nil) -> Promise<PageAITransformProjection>
```

List transformers

List all AI transforms

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int |  (optional) (default to 0)
let size = 987 // Int | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let include = [123] // [UUID] | Optional list of IDs to include in result (optional)

// List transformers
AIControllerAPI.getTransformers(page: page, size: size, sort: sort, include: include).then {
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
 **page** | **Int** |  | [optional] [default to 0]
 **size** | **Int** | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **include** | [**[UUID]**](UUID) | Optional list of IDs to include in result | [optional] 

### Return type

[**PageAITransformProjection**](PageAITransformProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **invokeTransformer**
```swift
    open class func invokeTransformer( invokeTransformerOptions: InvokeTransformerOptions) -> Promise<ConditionalStructuredContentResult>
```

Invoke a transformer

Execute an AI transformer to generate structured content

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let invokeTransformerOptions = InvokeTransformerOptions(aiTransformId: 123, aiTransformMappingId: 123, rawInput: "rawInput_example", entityId: "entityId_example", entityType: "entityType_example", rawConditions: ["rawConditions_example"], rawInstructions: ["rawInstructions_example"], rawOutputSchema: StructuredOutputSchema(anyOf: [nil], _default: 123, _description: "_description_example", enumValues: ["enumValues_example"], example: 123, format: "format_example", items: nil, maxItems: 123, minItems: 123, maxLength: 123, minLength: 123, pattern: "pattern_example", properties: "TODO", propertyOrdering: ["propertyOrdering_example"], _required: ["_required_example"], maxProperties: 123, minProperties: 123, maximum: 123, minimum: 123, nullable: false, title: "title_example", type: "type_example"), contentSelector: "contentSelector_example") // InvokeTransformerOptions | 

// Invoke a transformer
AIControllerAPI.invokeTransformer(invokeTransformerOptions: invokeTransformerOptions).then {
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
 **invokeTransformerOptions** | [**InvokeTransformerOptions**](InvokeTransformerOptions) |  | 

### Return type

[**ConditionalStructuredContentResult**](ConditionalStructuredContentResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **validateStructuredOutputSchema**
```swift
    open class func validateStructuredOutputSchema( structuredOutputSchema: StructuredOutputSchema) -> Promise<StructuredOutputSchemaValidation>
```

Validate structured content schema

Check if a schema is valid and can be used to extract data using AI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let structuredOutputSchema = StructuredOutputSchema(anyOf: [nil], _default: 123, _description: "_description_example", enumValues: ["enumValues_example"], example: 123, format: "format_example", items: nil, maxItems: 123, minItems: 123, maxLength: 123, minLength: 123, pattern: "pattern_example", properties: "TODO", propertyOrdering: ["propertyOrdering_example"], _required: ["_required_example"], maxProperties: 123, minProperties: 123, maximum: 123, minimum: 123, nullable: false, title: "title_example", type: "type_example") // StructuredOutputSchema | 

// Validate structured content schema
AIControllerAPI.validateStructuredOutputSchema(structuredOutputSchema: structuredOutputSchema).then {
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
 **structuredOutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | 

### Return type

[**StructuredOutputSchemaValidation**](StructuredOutputSchemaValidation)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

