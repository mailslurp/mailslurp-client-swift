//
// EmailVerificationControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class EmailVerificationControllerAPI {
    /**
     * enum for parameter sort
     */
    public enum Sort_getValidationRequests: String, CaseIterable {
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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getValidationRequests(page: Int? = nil, size: Int? = nil, sort: Sort_getValidationRequests? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, isValid: Bool? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageEmailValidationRequest?, _ error: Error?) -> Void)) {
        getValidationRequestsWithRequestBuilder(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, isValid: isValid).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     - GET /email-verification/validation-requests
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size for paginated result list. (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .desc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter isValid: (query) Filter where email is valid is true or false (optional)
     - returns: RequestBuilder<PageEmailValidationRequest> 
     */
    open class func getValidationRequestsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getValidationRequests? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil, isValid: Bool? = nil) -> RequestBuilder<PageEmailValidationRequest> {
        let path = "/email-verification/validation-requests"
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
            "isValid": isValid?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageEmailValidationRequest>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     
     - parameter validateEmailAddressListOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func validateEmailAddressList(validateEmailAddressListOptions: ValidateEmailAddressListOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: ValidateEmailAddressListResult?, _ error: Error?) -> Void)) {
        validateEmailAddressListWithRequestBuilder(validateEmailAddressListOptions: validateEmailAddressListOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Validate a list of email addresses. Per unit billing. See your plan for pricing.
     - POST /email-verification/email-address-list
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter validateEmailAddressListOptions: (body)  
     - returns: RequestBuilder<ValidateEmailAddressListResult> 
     */
    open class func validateEmailAddressListWithRequestBuilder(validateEmailAddressListOptions: ValidateEmailAddressListOptions) -> RequestBuilder<ValidateEmailAddressListResult> {
        let path = "/email-verification/email-address-list"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: validateEmailAddressListOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ValidateEmailAddressListResult>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
