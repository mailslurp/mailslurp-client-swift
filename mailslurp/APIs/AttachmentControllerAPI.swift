//
// AttachmentControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class AttachmentControllerAPI : NSObject {
    /**
     Delete all attachments
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteAllAttachments(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteAllAttachmentsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Delete all attachments
     - DELETE /attachments
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAllAttachmentsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/attachments"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete an attachment
     
     - parameter attachmentId: (path) ID of attachment 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteAttachment( attachmentId: String, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteAttachmentWithRequestBuilder(attachmentId: attachmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Delete an attachment
     - DELETE /attachments/{attachmentId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) ID of attachment 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAttachmentWithRequestBuilder(attachmentId: String) -> RequestBuilder<Void> {
        var path = "/attachments/{attachmentId}"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
     
     - parameter attachmentId: (path) ID of attachment 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<DownloadAttachmentDto>
     */
    open class func downloadAttachmentAsBase64Encoded( attachmentId: String, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<DownloadAttachmentDto> {
        let deferred = Promise<DownloadAttachmentDto>.pending()
        downloadAttachmentAsBase64EncodedWithRequestBuilder(attachmentId: attachmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
     - GET /attachments/{attachmentId}/base64
     - Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) ID of attachment 
     - returns: RequestBuilder<DownloadAttachmentDto> 
     */
    open class func downloadAttachmentAsBase64EncodedWithRequestBuilder(attachmentId: String) -> RequestBuilder<DownloadAttachmentDto> {
        var path = "/attachments/{attachmentId}/base64"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DownloadAttachmentDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
     
     - parameter attachmentId: (path) ID of attachment 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Data>
     */
    open class func downloadAttachmentAsBytes( attachmentId: String, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Data> {
        let deferred = Promise<Data>.pending()
        downloadAttachmentAsBytesWithRequestBuilder(attachmentId: attachmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
     - GET /attachments/{attachmentId}/bytes
     - Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) ID of attachment 
     - returns: RequestBuilder<Data> 
     */
    open class func downloadAttachmentAsBytesWithRequestBuilder(attachmentId: String) -> RequestBuilder<Data> {
        var path = "/attachments/{attachmentId}/bytes"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get an attachment entity
     
     - parameter attachmentId: (path) ID of attachment 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<AttachmentEntity>
     */
    open class func getAttachment( attachmentId: String, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<AttachmentEntity> {
        let deferred = Promise<AttachmentEntity>.pending()
        getAttachmentWithRequestBuilder(attachmentId: attachmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get an attachment entity
     - GET /attachments/{attachmentId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) ID of attachment 
     - returns: RequestBuilder<AttachmentEntity> 
     */
    open class func getAttachmentWithRequestBuilder(attachmentId: String) -> RequestBuilder<AttachmentEntity> {
        var path = "/attachments/{attachmentId}"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AttachmentEntity>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get email attachment metadata information
     
     - parameter attachmentId: (path) ID of attachment 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<AttachmentMetaData>
     */
    open class func getAttachmentInfo( attachmentId: String, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<AttachmentMetaData> {
        let deferred = Promise<AttachmentMetaData>.pending()
        getAttachmentInfoWithRequestBuilder(attachmentId: attachmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get email attachment metadata information
     - GET /attachments/{attachmentId}/metadata
     - Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter attachmentId: (path) ID of attachment 
     - returns: RequestBuilder<AttachmentMetaData> 
     */
    open class func getAttachmentInfoWithRequestBuilder(attachmentId: String) -> RequestBuilder<AttachmentMetaData> {
        var path = "/attachments/{attachmentId}/metadata"
        let attachmentIdPreEscape = "\(APIHelper.mapValueToPathItem(attachmentId))"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachmentId}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AttachmentMetaData>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAttachments: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get email attachments
     
     - parameter page: (query) Optional page index for list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter fileNameFilter: (query) Optional file name and content type search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageAttachmentEntity>
     */
    open class func getAttachments( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAttachments? = nil,  fileNameFilter: String? = nil,  since: Date? = nil,  before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageAttachmentEntity> {
        let deferred = Promise<PageAttachmentEntity>.pending()
        getAttachmentsWithRequestBuilder(page: page, size: size, sort: sort, fileNameFilter: fileNameFilter, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get email attachments
     - GET /attachments
     - Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index for list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter fileNameFilter: (query) Optional file name and content type search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageAttachmentEntity> 
     */
    open class func getAttachmentsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAttachments? = nil, fileNameFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageAttachmentEntity> {
        let path = "/attachments"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "fileNameFilter": fileNameFilter?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageAttachmentEntity>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
     
     - parameter uploadAttachmentOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[String]>
     */
    open class func uploadAttachment( uploadAttachmentOptions: UploadAttachmentOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[String]> {
        let deferred = Promise<[String]>.pending()
        uploadAttachmentWithRequestBuilder(uploadAttachmentOptions: uploadAttachmentOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
     - POST /attachments
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter uploadAttachmentOptions: (body)  
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadAttachmentWithRequestBuilder(uploadAttachmentOptions: UploadAttachmentOptions) -> RequestBuilder<[String]> {
        let path = "/attachments"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadAttachmentOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[String]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
     
     - parameter inlineObject1: (body)  
     - parameter contentType: (header) Optional contentType for file. For instance `application/pdf` (optional)
     - parameter filename: (query) Optional filename to save upload with (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[String]>
     */
    open class func uploadAttachmentBytes( inlineObject1: InlineObject1,  contentType: String? = nil,  filename: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[String]> {
        let deferred = Promise<[String]>.pending()
        uploadAttachmentBytesWithRequestBuilder(inlineObject1: inlineObject1, contentType: contentType, filename: filename).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
     - POST /attachments/bytes
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inlineObject1: (body)  
     - parameter contentType: (header) Optional contentType for file. For instance `application/pdf` (optional)
     - parameter filename: (query) Optional filename to save upload with (optional)
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadAttachmentBytesWithRequestBuilder(inlineObject1: InlineObject1, contentType: String? = nil, filename: String? = nil) -> RequestBuilder<[String]> {
        let path = "/attachments/bytes"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject1)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filename": filename?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            "contentType": contentType?.encodeToJSON(),
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[String]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
     
     - parameter contentType: (query) Optional content type of attachment (optional)
     - parameter filename: (query) Optional name of file (optional)
     - parameter xFilename: (query) Optional content type header of attachment (optional)
     - parameter inlineObject: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[String]>
     */
    open class func uploadMultipartForm( contentType: String? = nil,  filename: String? = nil,  xFilename: String? = nil,  inlineObject: InlineObject? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[String]> {
        let deferred = Promise<[String]>.pending()
        uploadMultipartFormWithRequestBuilder(contentType: contentType, filename: filename, xFilename: xFilename, inlineObject: inlineObject).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
     - POST /attachments/multipart
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter contentType: (query) Optional content type of attachment (optional)
     - parameter filename: (query) Optional name of file (optional)
     - parameter xFilename: (query) Optional content type header of attachment (optional)
     - parameter inlineObject: (body)  (optional)
     - returns: RequestBuilder<[String]> 
     */
    open class func uploadMultipartFormWithRequestBuilder(contentType: String? = nil, filename: String? = nil, xFilename: String? = nil, inlineObject: InlineObject? = nil) -> RequestBuilder<[String]> {
        let path = "/attachments/multipart"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "contentType": contentType?.encodeToJSON(),
            "filename": filename?.encodeToJSON(),
            "x-filename": xFilename?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[String]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
