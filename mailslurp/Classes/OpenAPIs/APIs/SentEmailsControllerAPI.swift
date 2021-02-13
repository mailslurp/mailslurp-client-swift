//
// SentEmailsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc open class SentEmailsControllerAPI : NSObject {
    /**
     Get sent email receipt
     
     - parameter _id: (path) id 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSentEmail(_id: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: SentEmailDto?,_ error: Error?) -> Void)) {
        getSentEmailWithRequestBuilder(_id: _id).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
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
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<SentEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSentEmails(inboxId: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getSentEmails? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageSentEmailProjection?,_ error: Error?) -> Void)) {
        getSentEmailsWithRequestBuilder(inboxId: inboxId, page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
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
     - returns: RequestBuilder<PageSentEmailProjection> 
     */
    open class func getSentEmailsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getSentEmails? = nil) -> RequestBuilder<PageSentEmailProjection> {
        let path = "/sent"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(), 
            "page": page?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "sort": sort?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageSentEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
