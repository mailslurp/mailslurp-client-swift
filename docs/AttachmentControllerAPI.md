# AttachmentControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadAttachment**](AttachmentControllerAPI.md#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding
[**uploadAttachmentBytes**](AttachmentControllerAPI.md#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream
[**uploadMultipartForm**](AttachmentControllerAPI.md#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form


# **uploadAttachment**
```swift
    open class func uploadAttachment(uploadOptions: UploadAttachmentOptions, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Upload an attachment for sending using base64 file encoding

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let uploadOptions = UploadAttachmentOptions(base64Contents: "base64Contents_example", contentType: "contentType_example", filename: "filename_example") // UploadAttachmentOptions | uploadOptions

// Upload an attachment for sending using base64 file encoding
AttachmentControllerAPI.uploadAttachment(uploadOptions: uploadOptions) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadOptions** | [**UploadAttachmentOptions**](UploadAttachmentOptions.md) | uploadOptions | 

### Return type

**[String]**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadAttachmentBytes**
```swift
    open class func uploadAttachmentBytes(filename: String? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Upload an attachment for sending using file byte stream input octet stream

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let filename = "filename_example" // String | Optional filename to save upload with (optional)

// Upload an attachment for sending using file byte stream input octet stream
AttachmentControllerAPI.uploadAttachmentBytes(filename: filename) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String** | Optional filename to save upload with | [optional] 

### Return type

**[String]**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMultipartForm**
```swift
    open class func uploadMultipartForm(file: URL, contentType: String? = nil, filename: String? = nil, xFilename: String? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Upload an attachment for sending using Multipart Form

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let file = URL(string: "https://example.com")! // URL | file
let contentType = "contentType_example" // String | contentType (optional)
let filename = "filename_example" // String | filename (optional)
let xFilename = "xFilename_example" // String | x-filename (optional)

// Upload an attachment for sending using Multipart Form
AttachmentControllerAPI.uploadMultipartForm(file: file, contentType: contentType, filename: filename, xFilename: xFilename) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **URL** | file | 
 **contentType** | **String** | contentType | [optional] 
 **filename** | **String** | filename | [optional] 
 **xFilename** | **String** | x-filename | [optional] 

### Return type

**[String]**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

