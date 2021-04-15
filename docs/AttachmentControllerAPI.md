# AttachmentControllerAPI

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadAttachment**](AttachmentControllerAPI#uploadattachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadAttachmentBytes**](AttachmentControllerAPI#uploadattachmentbytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**uploadMultipartForm**](AttachmentControllerAPI#uploadmultipartform) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.


# **uploadAttachment**
```swift
    open class func uploadAttachment(uploadOptions: UploadAttachmentOptions, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let uploadOptions = UploadAttachmentOptions(base64Contents: "base64Contents_example", contentType: "contentType_example", filename: "filename_example") // UploadAttachmentOptions | uploadOptions

// Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
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
 **uploadOptions** | [**UploadAttachmentOptions**](UploadAttachmentOptions) | uploadOptions | 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadAttachmentBytes**
```swift
    open class func uploadAttachmentBytes(string: String? = nil, filename: String? = nil, byteArray: Data? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let string = "string_example" // String | Optional contentType for file. For instance `application/pdf` (optional)
let filename = "filename_example" // String | Optional filename to save upload with (optional)
let byteArray = 987 // Data | Byte array request body (optional)

// Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
AttachmentControllerAPI.uploadAttachmentBytes(string: string, filename: filename, byteArray: byteArray) { (response, error) in
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
 **string** | **String** | Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **filename** | **String** | Optional filename to save upload with | [optional] 
 **byteArray** | **Data** | Byte array request body | [optional] 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **uploadMultipartForm**
```swift
    open class func uploadMultipartForm(file: URL, contentType: String? = nil, filename: String? = nil, xFilename: String? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import mailslurp

let file = URL(string: "https://example.com")! // URL | file
let contentType = "contentType_example" // String | Optional content type of attachment (optional)
let filename = "filename_example" // String | Optional name of file (optional)
let xFilename = "xFilename_example" // String | Optional content type header of attachment (optional)

// Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
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
 **contentType** | **String** | Optional content type of attachment | [optional] 
 **filename** | **String** | Optional name of file | [optional] 
 **xFilename** | **String** | Optional content type header of attachment | [optional] 

### Return type

**[String]**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

