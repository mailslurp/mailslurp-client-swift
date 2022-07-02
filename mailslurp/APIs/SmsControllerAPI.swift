//
// SmsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc open class SmsControllerAPI : NSObject {
    /**
     Delete SMS message.
     
     - parameter smsId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSmsMessage(smsId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteSmsMessageWithRequestBuilder(smsId: smsId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete SMS message.
     - DELETE /sms/{smsId}
     - Delete an SMS message
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter smsId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteSmsMessageWithRequestBuilder(smsId: UUID) -> RequestBuilder<Void> {
        var path = "/sms/{smsId}"
        let smsIdPreEscape = "\(APIHelper.mapValueToPathItem(smsId))"
        let smsIdPostEscape = smsIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{smsId}", with: smsIdPostEscape, options: .literal, range: nil)
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
     Delete all SMS messages
     
     - parameter phoneNumberId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSmsMessages(phoneNumberId: UUID? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteSmsMessagesWithRequestBuilder(phoneNumberId: phoneNumberId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete all SMS messages
     - DELETE /sms
     - Delete all SMS messages or all messages for a given phone number
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter phoneNumberId: (query)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteSmsMessagesWithRequestBuilder(phoneNumberId: UUID? = nil) -> RequestBuilder<Void> {
        let path = "/sms"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "phoneNumberId": phoneNumberId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
     
     - parameter smsId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSmsMessage(smsId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: SmsMessage?, _ error: Error?) -> Void)) {
        getSmsMessageWithRequestBuilder(smsId: smsId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
     - GET /sms/{smsId}
     - Returns a SMS summary object with content.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter smsId: (path)  
     - returns: RequestBuilder<SmsMessage> 
     */
    open class func getSmsMessageWithRequestBuilder(smsId: UUID) -> RequestBuilder<SmsMessage> {
        var path = "/sms/{smsId}"
        let smsIdPreEscape = "\(APIHelper.mapValueToPathItem(smsId))"
        let smsIdPostEscape = smsIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{smsId}", with: smsIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SmsMessage>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getSmsMessagesPaginated: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all SMS messages in all phone numbers in paginated form. .
     
     - parameter phoneNumber: (query) Optional receiving phone number to filter SMS messages for (optional)
     - parameter page: (query) Optional page index in SMS list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter unreadOnly: (query) Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional, default to false)
     - parameter since: (query) Optional filter SMSs received after given date time (optional)
     - parameter before: (query) Optional filter SMSs received before given date time (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSmsMessagesPaginated(phoneNumber: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getSmsMessagesPaginated? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageSmsProjection?, _ error: Error?) -> Void)) {
        getSmsMessagesPaginatedWithRequestBuilder(phoneNumber: phoneNumber, page: page, size: size, sort: sort, unreadOnly: unreadOnly, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all SMS messages in all phone numbers in paginated form. .
     - GET /sms
     - By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter phoneNumber: (query) Optional receiving phone number to filter SMS messages for (optional)
     - parameter page: (query) Optional page index in SMS list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter unreadOnly: (query) Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly (optional, default to false)
     - parameter since: (query) Optional filter SMSs received after given date time (optional)
     - parameter before: (query) Optional filter SMSs received before given date time (optional)
     - returns: RequestBuilder<PageSmsProjection> 
     */
    open class func getSmsMessagesPaginatedWithRequestBuilder(phoneNumber: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getSmsMessagesPaginated? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageSmsProjection> {
        let path = "/sms"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "phoneNumber": phoneNumber?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "unreadOnly": unreadOnly?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageSmsProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
