# AttachmentControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAllAttachments**](AttachmentControllerAPI#deleteallattachments) | **DELETE** /attachments | Delete all attachments
[**deleteAttachment**](AttachmentControllerAPI#deleteattachment) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**downloadAttachmentAsBase64Encoded**](AttachmentControllerAPI#downloadattachmentasbase64encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**downloadAttachmentAsBytes**](AttachmentControllerAPI#downloadattachmentasbytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**getAttachment**](AttachmentControllerAPI#getattachment) | **GET** /attachments/{attachmentId} | Get an attachment entity
[**getAttachmentInfo**](AttachmentControllerAPI#getattachmentinfo) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**getAttachments**](AttachmentControllerAPI#getattachments) | **GET** /attachments | Get email attachments
[**uploadAttachment**](AttachmentControllerAPI#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadAttachmentBytes**](AttachmentControllerAPI#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadMultipartForm**](AttachmentControllerAPI#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **deleteAllAttachments**
```swift
    open class func deleteAllAttachments() -> Promise<Void>
```

Delete all attachments

Delete all attachments

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp


// Delete all attachments
AttachmentControllerAPI.deleteAllAttachments().then {
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

# **deleteAttachment**
```swift
    open class func deleteAttachment( attachmentId: String) -> Promise<Void>
```

Delete an attachment

Delete an attachment

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment

// Delete an attachment
AttachmentControllerAPI.deleteAttachment(attachmentId: attachmentId).then {
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
 **attachmentId** | **String** | ID of attachment | 

### Return type

Void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentAsBase64Encoded**
```swift
    open class func downloadAttachmentAsBase64Encoded( attachmentId: String) -> Promise<DownloadAttachmentDto>
```

Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment

// Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
AttachmentControllerAPI.downloadAttachmentAsBase64Encoded(attachmentId: attachmentId).then {
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
 **attachmentId** | **String** | ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **downloadAttachmentAsBytes**
```swift
    open class func downloadAttachmentAsBytes( attachmentId: String) -> Promise<Data>
```

Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment

// Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
AttachmentControllerAPI.downloadAttachmentAsBytes(attachmentId: attachmentId).then {
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
 **attachmentId** | **String** | ID of attachment | 

### Return type

**Data**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachment**
```swift
    open class func getAttachment( attachmentId: String) -> Promise<AttachmentEntityDto>
```

Get an attachment entity

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment

// Get an attachment entity
AttachmentControllerAPI.getAttachment(attachmentId: attachmentId).then {
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
 **attachmentId** | **String** | ID of attachment | 

### Return type

[**AttachmentEntityDto**](AttachmentEntityDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachmentInfo**
```swift
    open class func getAttachmentInfo( attachmentId: String) -> Promise<AttachmentMetaData>
```

Get email attachment metadata information

Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let attachmentId = "attachmentId_example" // String | ID of attachment

// Get email attachment metadata information
AttachmentControllerAPI.getAttachmentInfo(attachmentId: attachmentId).then {
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
 **attachmentId** | **String** | ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAttachments**
```swift
    open class func getAttachments( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAttachments? = nil,  fileNameFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  inboxId: UUID? = nil,  emailId: UUID? = nil,  sentEmailId: UUID? = nil,  include: [String]? = nil) -> Promise<PageAttachmentEntity>
```

Get email attachments

Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let page = 987 // Int | Optional page index for list pagination (optional) (default to 0)
let size = 987 // Int | Optional page size for list pagination (optional) (default to 20)
let sort = "sort_example" // String | Optional createdAt sort direction ASC or DESC (optional) (default to .asc)
let fileNameFilter = "fileNameFilter_example" // String | Optional file name and content type search filter (optional)
let since = Date() // Date | Filter by created at after the given timestamp (optional)
let before = Date() // Date | Filter by created at before the given timestamp (optional)
let inboxId = 987 // UUID | Optional inboxId to filter attachments by (optional)
let emailId = 987 // UUID | Optional emailId to filter attachments by (optional)
let sentEmailId = 987 // UUID | Optional sentEmailId to filter attachments by (optional)
let include = ["inner_example"] // [String] | Optional list of IDs to include in result (optional)

// Get email attachments
AttachmentControllerAPI.getAttachments(page: page, size: size, sort: sort, fileNameFilter: fileNameFilter, since: since, before: before, inboxId: inboxId, emailId: emailId, sentEmailId: sentEmailId, include: include).then {
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
 **page** | **Int** | Optional page index for list pagination | [optional] [default to 0]
 **size** | **Int** | Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String** | Optional createdAt sort direction ASC or DESC | [optional] [default to .asc]
 **fileNameFilter** | **String** | Optional file name and content type search filter | [optional] 
 **since** | **Date** | Filter by created at after the given timestamp | [optional] 
 **before** | **Date** | Filter by created at before the given timestamp | [optional] 
 **inboxId** | **UUID** | Optional inboxId to filter attachments by | [optional] 
 **emailId** | **UUID** | Optional emailId to filter attachments by | [optional] 
 **sentEmailId** | **UUID** | Optional sentEmailId to filter attachments by | [optional] 
 **include** | [**[String]**](String) | Optional list of IDs to include in result | [optional] 

### Return type

[**PageAttachmentEntity**](PageAttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachment**
```swift
    open class func uploadAttachment( uploadAttachmentOptions: UploadAttachmentOptions) -> Promise<[String]>
```

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let uploadAttachmentOptions = UploadAttachmentOptions(contentId: "contentId_example", contentType: "contentType_example", filename: "filename_example", base64Contents: "base64Contents_example") // UploadAttachmentOptions | 

// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
AttachmentControllerAPI.uploadAttachment(uploadAttachmentOptions: uploadAttachmentOptions).then {
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
 **uploadAttachmentOptions** | [**UploadAttachmentOptions**](UploadAttachmentOptions) |  | 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachmentBytes**
```swift
    open class func uploadAttachmentBytes( contentType: String? = nil,  contentType2: String? = nil,  contentId: String? = nil,  filename: String? = nil,  fileSize: Int64? = nil,  filename2: String? = nil) -> Promise<[String]>
```

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let contentType = "contentType_example" // String |  (optional)
let contentType2 = "contentType2_example" // String | Optional contentType for file. For instance `application/pdf` (optional)
let contentId = "contentId_example" // String | Optional content ID (CID) to save upload with (optional)
let filename = "filename_example" // String | Optional filename to save upload with (optional)
let fileSize = 987 // Int64 | Optional byte length to save upload with (optional)
let filename2 = "filename2_example" // String |  (optional)

// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
AttachmentControllerAPI.uploadAttachmentBytes(contentType: contentType, contentType2: contentType2, contentId: contentId, filename: filename, fileSize: fileSize, filename2: filename2).then {
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
 **contentType** | **String** |  | [optional] 
 **contentType2** | **String** | Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **contentId** | **String** | Optional content ID (CID) to save upload with | [optional] 
 **filename** | **String** | Optional filename to save upload with | [optional] 
 **fileSize** | **Int64** | Optional byte length to save upload with | [optional] 
 **filename2** | **String** |  | [optional] 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadMultipartForm**
```swift
    open class func uploadMultipartForm( contentId: String? = nil,  contentType: String? = nil,  filename: String? = nil,  contentTypeHeader: String? = nil,  xFilename: String? = nil,  xFilenameRaw: String? = nil,  xFilesize: Int64? = nil,  uploadMultipartFormRequest: UploadMultipartFormRequest? = nil) -> Promise<[String]>
```

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let contentId = "contentId_example" // String | Optional content ID of attachment (optional)
let contentType = "contentType_example" // String | Optional content type of attachment (optional)
let filename = "filename_example" // String | Optional name of file (optional)
let contentTypeHeader = "contentTypeHeader_example" // String | Optional content type header of attachment (optional)
let xFilename = "xFilename_example" // String | Optional filename header of attachment (optional)
let xFilenameRaw = "xFilenameRaw_example" // String | Optional raw filename header of attachment that will be converted to punycode (optional)
let xFilesize = 987 // Int64 | Optional content size of attachment (optional)
let uploadMultipartFormRequest = uploadMultipartForm_request(file: URL(string: "https://example.com")!) // UploadMultipartFormRequest |  (optional)

// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
AttachmentControllerAPI.uploadMultipartForm(contentId: contentId, contentType: contentType, filename: filename, contentTypeHeader: contentTypeHeader, xFilename: xFilename, xFilenameRaw: xFilenameRaw, xFilesize: xFilesize, uploadMultipartFormRequest: uploadMultipartFormRequest).then {
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
 **contentId** | **String** | Optional content ID of attachment | [optional] 
 **contentType** | **String** | Optional content type of attachment | [optional] 
 **filename** | **String** | Optional name of file | [optional] 
 **contentTypeHeader** | **String** | Optional content type header of attachment | [optional] 
 **xFilename** | **String** | Optional filename header of attachment | [optional] 
 **xFilenameRaw** | **String** | Optional raw filename header of attachment that will be converted to punycode | [optional] 
 **xFilesize** | **Int64** | Optional content size of attachment | [optional] 
 **uploadMultipartFormRequest** | [**UploadMultipartFormRequest**](UploadMultipartFormRequest) |  | [optional] 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

