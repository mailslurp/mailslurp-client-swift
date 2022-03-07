//
// SentEmailsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class SentEmailsControllerAPI : NSObject {
    /**
     Delete all sent email receipts
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteAllSentEmails(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteAllSentEmailsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Delete all sent email receipts
     - DELETE /sent
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAllSentEmailsWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/sent"
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
     Delete sent email receipt
     
     - parameter _id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteSentEmail( _id: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteSentEmailWithRequestBuilder(_id: _id).execute(apiResponseQueue) { result -> Void in
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
     Delete sent email receipt
     - DELETE /sent/{id}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteSentEmailWithRequestBuilder(_id: UUID) -> RequestBuilder<Void> {
        var path = "/sent/{id}"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
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
     * enum for parameter sort
     */
    public enum Sort_getAllSentTrackingPixels: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**

     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageTrackingPixelProjection>
     */
    open class func getAllSentTrackingPixels( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllSentTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageTrackingPixelProjection> {
        let deferred = Promise<PageTrackingPixelProjection>.pending()
        getAllSentTrackingPixelsWithRequestBuilder(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).execute(apiResponseQueue) { result -> Void in
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
     - GET /sent/tracking-pixels
     - Get all sent email tracking pixels in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageTrackingPixelProjection> 
     */
    open class func getAllSentTrackingPixelsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllSentTrackingPixels? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageTrackingPixelProjection> {
        let path = "/sent/tracking-pixels"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageTrackingPixelProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
     
     - parameter emailId: (path) ID of email 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<String>
     */
    open class func getRawSentEmailContents( emailId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<String> {
        let deferred = Promise<String>.pending()
        getRawSentEmailContentsWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
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
     Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
     - GET /sent/{emailId}/raw
     - Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) ID of email 
     - returns: RequestBuilder<String> 
     */
    open class func getRawSentEmailContentsWithRequestBuilder(emailId: UUID) -> RequestBuilder<String> {
        var path = "/sent/{emailId}/raw"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
     
     - parameter emailId: (path) ID of email 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<RawEmailJson>
     */
    open class func getRawSentEmailJson( emailId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<RawEmailJson> {
        let deferred = Promise<RawEmailJson>.pending()
        getRawSentEmailJsonWithRequestBuilder(emailId: emailId).execute(apiResponseQueue) { result -> Void in
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
     Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
     - GET /sent/{emailId}/raw/json
     - Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter emailId: (path) ID of email 
     - returns: RequestBuilder<RawEmailJson> 
     */
    open class func getRawSentEmailJsonWithRequestBuilder(emailId: UUID) -> RequestBuilder<RawEmailJson> {
        var path = "/sent/{emailId}/raw/json"
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<RawEmailJson>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get sent email receipt
     
     - parameter _id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<SentEmailDto>
     */
    open class func getSentEmail( _id: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<SentEmailDto> {
        let deferred = Promise<SentEmailDto>.pending()
        getSentEmailWithRequestBuilder(_id: _id).execute(apiResponseQueue) { result -> Void in
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
     Get sent email receipt
     - GET /sent/{id}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path)  
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func getSentEmailWithRequestBuilder(_id: UUID) -> RequestBuilder<SentEmailDto> {
        var path = "/sent/{id}"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SentEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get sent email HTML content
     
     - parameter _id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<String>
     */
    open class func getSentEmailHTMLContent( _id: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<String> {
        let deferred = Promise<String>.pending()
        getSentEmailHTMLContentWithRequestBuilder(_id: _id).execute(apiResponseQueue) { result -> Void in
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
     Get sent email HTML content
     - GET /sent/{id}/html
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path)  
     - returns: RequestBuilder<String> 
     */
    open class func getSentEmailHTMLContentWithRequestBuilder(_id: UUID) -> RequestBuilder<String> {
        var path = "/sent/{id}/html"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get sent email URL for viewing in browser or downloading
     
     - parameter _id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<EmailPreviewUrls>
     */
    open class func getSentEmailPreviewURLs( _id: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<EmailPreviewUrls> {
        let deferred = Promise<EmailPreviewUrls>.pending()
        getSentEmailPreviewURLsWithRequestBuilder(_id: _id).execute(apiResponseQueue) { result -> Void in
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
     Get sent email URL for viewing in browser or downloading
     - GET /sent/{id}/urls
     - Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path)  
     - returns: RequestBuilder<EmailPreviewUrls> 
     */
    open class func getSentEmailPreviewURLsWithRequestBuilder(_id: UUID) -> RequestBuilder<EmailPreviewUrls> {
        var path = "/sent/{id}/urls"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EmailPreviewUrls>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getSentEmailTrackingPixels: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**

     - parameter _id: (path)  
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageTrackingPixelProjection>
     */
    open class func getSentEmailTrackingPixels( _id: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentEmailTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageTrackingPixelProjection> {
        let deferred = Promise<PageTrackingPixelProjection>.pending()
        getSentEmailTrackingPixelsWithRequestBuilder(_id: _id, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).execute(apiResponseQueue) { result -> Void in
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
     - GET /sent/{id}/tracking-pixels
     - Get all tracking pixels for a sent email in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path)  
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageTrackingPixelProjection> 
     */
    open class func getSentEmailTrackingPixelsWithRequestBuilder(_id: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getSentEmailTrackingPixels? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageTrackingPixelProjection> {
        var path = "/sent/{id}/tracking-pixels"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageTrackingPixelProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getSentEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all sent emails in paginated form
     
     - parameter inboxId: (query) Optional inboxId to filter sender of sent emails by (optional)
     - parameter page: (query) Optional page index in inbox sent email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageSentEmailProjection>
     */
    open class func getSentEmails( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageSentEmailProjection> {
        let deferred = Promise<PageSentEmailProjection>.pending()
        getSentEmailsWithRequestBuilder(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).execute(apiResponseQueue) { result -> Void in
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
     Get all sent emails in paginated form
     - GET /sent
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inboxId to filter sender of sent emails by (optional)
     - parameter page: (query) Optional page index in inbox sent email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageSentEmailProjection> 
     */
    open class func getSentEmailsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getSentEmails? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageSentEmailProjection> {
        let path = "/sent"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageSentEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getSentOrganizationEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**

     - parameter inboxId: (query) Optional inboxId to filter sender of sent emails by (optional)
     - parameter page: (query) Optional page index in sent email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageSentEmailProjection>
     */
    open class func getSentOrganizationEmails( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getSentOrganizationEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageSentEmailProjection> {
        let deferred = Promise<PageSentEmailProjection>.pending()
        getSentOrganizationEmailsWithRequestBuilder(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).execute(apiResponseQueue) { result -> Void in
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
     - GET /sent/organization
     - Get all sent organization emails in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inboxId to filter sender of sent emails by (optional)
     - parameter page: (query) Optional page index in sent email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageSentEmailProjection> 
     */
    open class func getSentOrganizationEmailsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getSentOrganizationEmails? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageSentEmailProjection> {
        let path = "/sent/organization"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageSentEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
