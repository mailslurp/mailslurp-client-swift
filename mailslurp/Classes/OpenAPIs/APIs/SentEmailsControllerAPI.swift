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
     * enum for parameter sort
     */
    public enum Sort_getAllSentTrackingPixels: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all sent email tracking pixels in paginated form
     
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageTrackingPixelProjection>
     */
    open class func getAllSentTrackingPixels( page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getAllSentTrackingPixels? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageTrackingPixelProjection> {
        let deferred = Promise<PageTrackingPixelProjection>.pending()
        getAllSentTrackingPixelsWithRequestBuilder(page: page, searchFilter: searchFilter, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     Get all sent email tracking pixels in paginated form
     - GET /sent/tracking-pixels
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageTrackingPixelProjection> 
     */
    open class func getAllSentTrackingPixelsWithRequestBuilder(page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getAllSentTrackingPixels? = nil) -> RequestBuilder<PageTrackingPixelProjection> {
        let path = "/sent/tracking-pixels"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageTrackingPixelProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get sent email receipt
     
     - parameter _id: (path) id 
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
     - parameter _id: (path) id 
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
     
     - parameter _id: (path) id 
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
     - parameter _id: (path) id 
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
     * enum for parameter sort
     */
    public enum Sort_getSentEmailTrackingPixels: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all tracking pixels for a sent email in paginated form
     
     - parameter _id: (path) id 
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageTrackingPixelProjection>
     */
    open class func getSentEmailTrackingPixels( _id: UUID,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getSentEmailTrackingPixels? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageTrackingPixelProjection> {
        let deferred = Promise<PageTrackingPixelProjection>.pending()
        getSentEmailTrackingPixelsWithRequestBuilder(_id: _id, page: page, searchFilter: searchFilter, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     Get all tracking pixels for a sent email in paginated form
     - GET /sent/{id}/tracking-pixels
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path) id 
     - parameter page: (query) Optional page index in sent email tracking pixel list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in sent email tracking pixel list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageTrackingPixelProjection> 
     */
    open class func getSentEmailTrackingPixelsWithRequestBuilder(_id: UUID, page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getSentEmailTrackingPixels? = nil) -> RequestBuilder<PageTrackingPixelProjection> {
        var path = "/sent/{id}/tracking-pixels"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
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
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in inbox sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageSentEmailProjection>
     */
    open class func getSentEmails( inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getSentEmails? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageSentEmailProjection> {
        let deferred = Promise<PageSentEmailProjection>.pending()
        getSentEmailsWithRequestBuilder(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in inbox sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageSentEmailProjection> 
     */
    open class func getSentEmailsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getSentEmails? = nil) -> RequestBuilder<PageSentEmailProjection> {
        let path = "/sent"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
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
     Get all sent organization emails in paginated form
     
     - parameter inboxId: (query) Optional inboxId to filter sender of sent emails by (optional)
     - parameter page: (query) Optional page index in sent email list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageSentEmailProjection>
     */
    open class func getSentOrganizationEmails( inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getSentOrganizationEmails? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageSentEmailProjection> {
        let deferred = Promise<PageSentEmailProjection>.pending()
        getSentOrganizationEmailsWithRequestBuilder(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     Get all sent organization emails in paginated form
     - GET /sent/organization
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inboxId to filter sender of sent emails by (optional)
     - parameter page: (query) Optional page index in sent email list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageSentEmailProjection> 
     */
    open class func getSentOrganizationEmailsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getSentOrganizationEmails? = nil) -> RequestBuilder<PageSentEmailProjection> {
        let path = "/sent/organization"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "searchFilter": searchFilter?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageSentEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
