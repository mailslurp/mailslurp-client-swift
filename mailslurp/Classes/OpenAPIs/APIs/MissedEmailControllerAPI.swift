//
// MissedEmailControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class MissedEmailControllerAPI : NSObject {
    /**
     * enum for parameter sort
     */
    public enum Sort_getAllMissedEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all MissedEmails in paginated format
     
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageMissedEmailProjection>
     */
    open class func getAllMissedEmails( inboxId: UUID? = nil,  page: Int? = nil,  searchFilter: String? = nil,  size: Int? = nil,  sort: Sort_getAllMissedEmails? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageMissedEmailProjection> {
        let deferred = Promise<PageMissedEmailProjection>.pending()
        getAllMissedEmailsWithRequestBuilder(inboxId: inboxId, page: page, searchFilter: searchFilter, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     Get all MissedEmails in paginated format
     - GET /missed-emails
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageMissedEmailProjection> 
     */
    open class func getAllMissedEmailsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, searchFilter: String? = nil, size: Int? = nil, sort: Sort_getAllMissedEmails? = nil) -> RequestBuilder<PageMissedEmailProjection> {
        let path = "/missed-emails"
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

        let requestBuilder: RequestBuilder<PageMissedEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get MissedEmail
     
     - parameter missedEmailId: (path) missedEmailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<MissedEmail>
     */
    open class func getMissedEmail( missedEmailId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<MissedEmail> {
        let deferred = Promise<MissedEmail>.pending()
        getMissedEmailWithRequestBuilder(missedEmailId: missedEmailId).execute(apiResponseQueue) { result -> Void in
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
     Get MissedEmail
     - GET /missed-emails/{missedEmailId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter missedEmailId: (path) missedEmailId 
     - returns: RequestBuilder<MissedEmail> 
     */
    open class func getMissedEmailWithRequestBuilder(missedEmailId: UUID) -> RequestBuilder<MissedEmail> {
        var path = "/missed-emails/{missedEmailId}"
        let missedEmailIdPreEscape = "\(APIHelper.mapValueToPathItem(missedEmailId))"
        let missedEmailIdPostEscape = missedEmailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{missedEmailId}", with: missedEmailIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MissedEmail>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Wait for Nth missed email
     
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - parameter index: (query) Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 (optional)
     - parameter timeout: (query) Optional timeout milliseconds (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<MissedEmail>
     */
    open class func waitForNthMissedEmail( inboxId: UUID? = nil,  index: Int? = nil,  timeout: Int64? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<MissedEmail> {
        let deferred = Promise<MissedEmail>.pending()
        waitForNthMissedEmailWithRequestBuilder(inboxId: inboxId, index: index, timeout: timeout).execute(apiResponseQueue) { result -> Void in
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
     Wait for Nth missed email
     - GET /missed-emails/waitForNthMissedEmail
     - Wait for 0 based index missed email
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - parameter index: (query) Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 (optional)
     - parameter timeout: (query) Optional timeout milliseconds (optional)
     - returns: RequestBuilder<MissedEmail> 
     */
    open class func waitForNthMissedEmailWithRequestBuilder(inboxId: UUID? = nil, index: Int? = nil, timeout: Int64? = nil) -> RequestBuilder<MissedEmail> {
        let path = "/missed-emails/waitForNthMissedEmail"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "index": index?.encodeToJSON(),
            "timeout": timeout?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MissedEmail>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
