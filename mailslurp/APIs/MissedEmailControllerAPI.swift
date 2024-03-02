//
// MissedEmailControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

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
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - returns: Promise<PageMissedEmailProjection>
     */
    open class func getAllMissedEmails( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllMissedEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  inboxId: UUID? = nil) -> Promise<PageMissedEmailProjection> {
        let deferred = Promise<PageMissedEmailProjection>.pending()
        getAllMissedEmailsWithRequestBuilder(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, inboxId: inboxId).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
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
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - returns: RequestBuilder<PageMissedEmailProjection> 
     */
    open class func getAllMissedEmailsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllMissedEmails? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, inboxId: UUID? = nil) -> RequestBuilder<PageMissedEmailProjection> {
        let localVariablePath = "/missed-emails"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "searchFilter": (wrappedValue: searchFilter?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageMissedEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAllUnknownMissedEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all unknown missed emails in paginated format
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - returns: Promise<PageUnknownMissedEmailProjection>
     */
    open class func getAllUnknownMissedEmails( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllUnknownMissedEmails? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil,  inboxId: UUID? = nil) -> Promise<PageUnknownMissedEmailProjection> {
        let deferred = Promise<PageUnknownMissedEmailProjection>.pending()
        getAllUnknownMissedEmailsWithRequestBuilder(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, inboxId: inboxId).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get all unknown missed emails in paginated format
     - GET /missed-emails/unknown
     - Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - returns: RequestBuilder<PageUnknownMissedEmailProjection> 
     */
    open class func getAllUnknownMissedEmailsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllUnknownMissedEmails? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, inboxId: UUID? = nil) -> RequestBuilder<PageUnknownMissedEmailProjection> {
        let localVariablePath = "/missed-emails/unknown"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "searchFilter": (wrappedValue: searchFilter?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageUnknownMissedEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get MissedEmail
     
     - parameter missedEmailId: (path)  
     - returns: Promise<MissedEmailDto>
     */
    open class func getMissedEmail( missedEmailId: UUID) -> Promise<MissedEmailDto> {
        let deferred = Promise<MissedEmailDto>.pending()
        getMissedEmailWithRequestBuilder(missedEmailId: missedEmailId).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get MissedEmail
     - GET /missed-emails/{missedEmailId}
     - List emails that were missed due to plan limits.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter missedEmailId: (path)  
     - returns: RequestBuilder<MissedEmailDto> 
     */
    open class func getMissedEmailWithRequestBuilder(missedEmailId: UUID) -> RequestBuilder<MissedEmailDto> {
        var localVariablePath = "/missed-emails/{missedEmailId}"
        let missedEmailIdPreEscape = "\(APIHelper.mapValueToPathItem(missedEmailId))"
        let missedEmailIdPostEscape = missedEmailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{missedEmailId}", with: missedEmailIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MissedEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Restore missed emails
     
     - returns: Promise<Void>
     */
    open class func restoreMissedEmails() -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        restoreMissedEmailsWithRequestBuilder().execute { result in
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
     Restore missed emails
     - POST /missed-emails/restore
     - If emails were missed due to a plan limit they are saved as missed emails. If support team enables the canRestore flag these emails can be reload into your account using this method.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<Void> 
     */
    open class func restoreMissedEmailsWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/missed-emails/restore"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Wait for Nth missed email
     
     - parameter index: (query) Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - parameter timeout: (query) Optional timeout milliseconds (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: Promise<MissedEmailDto>
     */
    open class func waitForNthMissedEmail( index: Int,  inboxId: UUID? = nil,  timeout: Int64? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<MissedEmailDto> {
        let deferred = Promise<MissedEmailDto>.pending()
        waitForNthMissedEmailWithRequestBuilder(index: index, inboxId: inboxId, timeout: timeout, since: since, before: before).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
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
     - parameter index: (query) Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 
     - parameter inboxId: (query) Optional inbox ID filter (optional)
     - parameter timeout: (query) Optional timeout milliseconds (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<MissedEmailDto> 
     */
    open class func waitForNthMissedEmailWithRequestBuilder(index: Int, inboxId: UUID? = nil, timeout: Int64? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<MissedEmailDto> {
        let localVariablePath = "/missed-emails/waitForNthMissedEmail"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: true),
            "index": (wrappedValue: index.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MissedEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
