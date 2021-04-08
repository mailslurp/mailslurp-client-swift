//
// AttachmentControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc open class AttachmentControllerAPI : NSObject {
    /**
     Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
     
     - parameter uploadOptions: (body) uploadOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadAttachment(uploadOptions: UploadAttachmentOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        uploadAttachmentWithRequestBuilder(uploadOptions: uploadOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
     - POST /attachments
     - Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter uploadOptions: (body) uploadOptions 
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadAttachmentWithRequestBuilder(uploadOptions: UploadAttachmentOptions) -> RequestBuilder<[String]> {
        let path = "/attachments"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadOptions)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[String]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
     
     - parameter string: (query) Optional contentType for file. For instance &#x60;application/pdf&#x60; (optional)
     - parameter filename: (query) Optional filename to save upload with (optional)
     - parameter byteArray: (body) Byte array request body (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadAttachmentBytes(string: String? = nil, filename: String? = nil, byteArray: Data? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        uploadAttachmentBytesWithRequestBuilder(string: string, filename: filename, byteArray: byteArray).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
     - POST /attachments/bytes
     - Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter string: (query) Optional contentType for file. For instance &#x60;application/pdf&#x60; (optional)
     - parameter filename: (query) Optional filename to save upload with (optional)
     - parameter byteArray: (body) Byte array request body (optional)
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadAttachmentBytesWithRequestBuilder(string: String? = nil, filename: String? = nil, byteArray: Data? = nil) -> RequestBuilder<[String]> {
        let path = "/attachments/bytes"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: byteArray)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "String": string?.encodeToJSON(), 
            "filename": filename?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[String]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
     
     - parameter file: (form) file 
     - parameter contentType: (query) Optional content type of attachment (optional)
     - parameter filename: (query) Optional name of file (optional)
     - parameter xFilename: (query) Optional content type header of attachment (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadMultipartForm(file: URL, contentType: String? = nil, filename: String? = nil, xFilename: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        uploadMultipartFormWithRequestBuilder(file: file, contentType: contentType, filename: filename, xFilename: xFilename).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
     - POST /attachments/multipart
     - Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter file: (form) file 
     - parameter contentType: (query) Optional content type of attachment (optional)
     - parameter filename: (query) Optional name of file (optional)
     - parameter xFilename: (query) Optional content type header of attachment (optional)
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadMultipartFormWithRequestBuilder(file: URL, contentType: String? = nil, filename: String? = nil, xFilename: String? = nil) -> RequestBuilder<[String]> {
        let path = "/attachments/multipart"
        let URLString = mailslurpAPI.basePath + path
        let formParams: [String:Any?] = [
            "file": file.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "contentType": contentType?.encodeToJSON(), 
            "filename": filename?.encodeToJSON(), 
            "x-filename": xFilename?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[String]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
