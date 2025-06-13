//
// EmailVerificationControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
@preconcurrency import PromiseKit

@objcMembers open class EmailVerificationControllerAPI : NSObject {

    /**
     Delete all validation requests
     
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<Void>
     */
    open class func deleteAllValidationRequests(apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteAllValidationRequestsWithRequestBuilder(apiConfiguration: apiConfiguration).execute { result in
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
     Delete all validation requests
     - DELETE /email-verification
     - Remove validation requests
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAllValidationRequestsWithRequestBuilder(apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<Void> {
        let localVariablePath = "/email-verification"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete a validation record
     
     - parameter _id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<Void>
     */
    open class func deleteValidationRequest(_id: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteValidationRequestWithRequestBuilder(_id: _id, apiConfiguration: apiConfiguration).execute { result in
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
     Delete a validation record
     - DELETE /email-verification/{id}
     - Delete a validation record
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter _id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteValidationRequestWithRequestBuilder(_id: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/email-verification/{id}"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = apiConfiguration.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getValidationRequests: String, Sendable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for paginated result list. (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .desc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter isValid: (query) Filter where email is valid is true or false (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<PageEmailValidationRequest>
     */
    open class func getValidationRequests(page: Int? = nil, size: Int? = nil, sort: Sort_getValidationRequests? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, isValid: Bool? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<PageEmailValidationRequest> {
        let deferred = Promise<PageEmailValidationRequest>.pending()
        getValidationRequestsWithRequestBuilder(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, isValid: isValid, apiConfiguration: apiConfiguration).execute { result in
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
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     - GET /email-verification/validation-requests
     - List email verification requests
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for paginated result list. (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .desc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter isValid: (query) Filter where email is valid is true or false (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageEmailValidationRequest> 
     */
    open class func getValidationRequestsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getValidationRequests? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, isValid: Bool? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<PageEmailValidationRequest> {
        let localVariablePath = "/email-verification/validation-requests"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "searchFilter": (wrappedValue: searchFilter?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "since": (wrappedValue: since?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "before": (wrappedValue: before?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "isValid": (wrappedValue: isValid?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageEmailValidationRequest>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     
     - parameter validateEmailAddressListOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<ValidateEmailAddressListResult>
     */
    open class func validateEmailAddressList(validateEmailAddressListOptions: ValidateEmailAddressListOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<ValidateEmailAddressListResult> {
        let deferred = Promise<ValidateEmailAddressListResult>.pending()
        validateEmailAddressListWithRequestBuilder(validateEmailAddressListOptions: validateEmailAddressListOptions, apiConfiguration: apiConfiguration).execute { result in
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
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     - POST /email-verification/email-address-list
     - Verify a list of email addresses is valid and can be contacted.
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter validateEmailAddressListOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<ValidateEmailAddressListResult> 
     */
    open class func validateEmailAddressListWithRequestBuilder(validateEmailAddressListOptions: ValidateEmailAddressListOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<ValidateEmailAddressListResult> {
        let localVariablePath = "/email-verification/email-address-list"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: validateEmailAddressListOptions, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ValidateEmailAddressListResult>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
