//
// MissedEmailControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



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
     
     - parameter page: (query) Optional page index in inbox list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllMissedEmails(page: Int? = nil, size: Int? = nil, sort: Sort_getAllMissedEmails? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageMissedEmailProjection?,_ error: Error?) -> Void)) {
        getAllMissedEmailsWithRequestBuilder(page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all MissedEmails in paginated format
     - GET /missed-emails
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in inbox list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageMissedEmailProjection> 
     */
    open class func getAllMissedEmailsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllMissedEmails? = nil) -> RequestBuilder<PageMissedEmailProjection> {
        let path = "/missed-emails"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "sort": sort?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageMissedEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get MissedEmail
     
     - parameter missedEmailId: (path) MissedEmailId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMissedEmail(missedEmailId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: MissedEmail?,_ error: Error?) -> Void)) {
        getMissedEmailWithRequestBuilder(missedEmailId: missedEmailId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get MissedEmail
     - GET /missed-emails/{MissedEmailId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter missedEmailId: (path) MissedEmailId 
     - returns: RequestBuilder<MissedEmail> 
     */
    open class func getMissedEmailWithRequestBuilder(missedEmailId: UUID) -> RequestBuilder<MissedEmail> {
        var path = "/missed-emails/{MissedEmailId}"
        let missedEmailIdPreEscape = "\(APIHelper.mapValueToPathItem(missedEmailId))"
        let missedEmailIdPostEscape = missedEmailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{MissedEmailId}", with: missedEmailIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<MissedEmail>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
