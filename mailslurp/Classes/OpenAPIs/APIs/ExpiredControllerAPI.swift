//
// ExpiredControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class ExpiredControllerAPI : NSObject {
    /**
     Get default expiration settings
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<ExpirationDefaults>
     */
    open class func getExpirationDefaults(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<ExpirationDefaults> {
        let deferred = Promise<ExpirationDefaults>.pending()
        getExpirationDefaultsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Get default expiration settings
     - GET /expired/defaults
     - Return default times used for inbox expiration
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<ExpirationDefaults> 
     */
    open class func getExpirationDefaultsWithRequestBuilder() -> RequestBuilder<ExpirationDefaults> {
        let path = "/expired/defaults"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExpirationDefaults>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get expired inbox record for a previously existing inbox
     
     - parameter inboxId: (path) ID of inbox you want to retrieve (not the inbox ID) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<ExpiredInboxDto>
     */
    open class func getExpiredInboxByInboxId( inboxId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<ExpiredInboxDto> {
        let deferred = Promise<ExpiredInboxDto>.pending()
        getExpiredInboxByInboxIdWithRequestBuilder(inboxId: inboxId).execute(apiResponseQueue) { result -> Void in
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
     Get expired inbox record for a previously existing inbox
     - GET /expired/inbox/{inboxId}
     - Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (path) ID of inbox you want to retrieve (not the inbox ID) 
     - returns: RequestBuilder<ExpiredInboxDto> 
     */
    open class func getExpiredInboxByInboxIdWithRequestBuilder(inboxId: UUID) -> RequestBuilder<ExpiredInboxDto> {
        var path = "/expired/inbox/{inboxId}"
        let inboxIdPreEscape = "\(APIHelper.mapValueToPathItem(inboxId))"
        let inboxIdPostEscape = inboxIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{inboxId}", with: inboxIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExpiredInboxDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get an expired inbox record
     
     - parameter expiredId: (path) ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<ExpiredInboxDto>
     */
    open class func getExpiredInboxRecord( expiredId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<ExpiredInboxDto> {
        let deferred = Promise<ExpiredInboxDto>.pending()
        getExpiredInboxRecordWithRequestBuilder(expiredId: expiredId).execute(apiResponseQueue) { result -> Void in
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
     Get an expired inbox record
     - GET /expired/{expiredId}
     - Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter expiredId: (path) ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) 
     - returns: RequestBuilder<ExpiredInboxDto> 
     */
    open class func getExpiredInboxRecordWithRequestBuilder(expiredId: UUID) -> RequestBuilder<ExpiredInboxDto> {
        var path = "/expired/{expiredId}"
        let expiredIdPreEscape = "\(APIHelper.mapValueToPathItem(expiredId))"
        let expiredIdPostEscape = expiredIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{expiredId}", with: expiredIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExpiredInboxDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getExpiredInboxes: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     List records of expired inboxes
     
     - parameter page: (query) Optional page index in inbox sent email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageExpiredInboxRecordProjection>
     */
    open class func getExpiredInboxes( page: Int? = nil,  size: Int? = nil,  sort: Sort_getExpiredInboxes? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageExpiredInboxRecordProjection> {
        let deferred = Promise<PageExpiredInboxRecordProjection>.pending()
        getExpiredInboxesWithRequestBuilder(page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     List records of expired inboxes
     - GET /expired
     - Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in inbox sent email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox sent email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageExpiredInboxRecordProjection> 
     */
    open class func getExpiredInboxesWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getExpiredInboxes? = nil) -> RequestBuilder<PageExpiredInboxRecordProjection> {
        let path = "/expired"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageExpiredInboxRecordProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
