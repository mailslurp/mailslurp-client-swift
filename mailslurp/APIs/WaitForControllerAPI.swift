//
// WaitForControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc open class WaitForControllerAPI : NSObject {
    /**
     Wait for an email to match the provided filter conditions such as subject contains keyword.
     
     - parameter waitForConditions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitFor(waitForConditions: WaitForConditions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [EmailPreview]?, _ error: Error?) -> Void)) {
        waitForWithRequestBuilder(waitForConditions: waitForConditions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wait for an email to match the provided filter conditions such as subject contains keyword.
     - POST /waitFor
     - Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter waitForConditions: (body)  
     - returns: RequestBuilder<[EmailPreview]> 
     */
    open class func waitForWithRequestBuilder(waitForConditions: WaitForConditions) -> RequestBuilder<[EmailPreview]> {
        let path = "/waitFor"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: waitForConditions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[EmailPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForEmailCount: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
     
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater that 1 
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitForEmailCount(inboxId: UUID, count: Int, timeout: Int64? = nil, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sort: Sort_waitForEmailCount? = nil, delay: Int64? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [EmailPreview]?, _ error: Error?) -> Void)) {
        waitForEmailCountWithRequestBuilder(inboxId: inboxId, count: count, timeout: timeout, unreadOnly: unreadOnly, before: before, since: since, sort: sort, delay: delay).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
     - GET /waitForEmailCount
     - If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater that 1 
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<[EmailPreview]> 
     */
    open class func waitForEmailCountWithRequestBuilder(inboxId: UUID, count: Int, timeout: Int64? = nil, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sort: Sort_waitForEmailCount? = nil, delay: Int64? = nil) -> RequestBuilder<[EmailPreview]> {
        let path = "/waitForEmailCount"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId.encodeToJSON(),
            "count": count.encodeToJSON(),
            "timeout": timeout?.encodeToJSON(),
            "unreadOnly": unreadOnly?.encodeToJSON(),
            "before": before?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "delay": delay?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[EmailPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForLatestEmail: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Fetch inbox's latest email or if empty wait for an email to arrive
     
     - parameter inboxId: (query) Id of the inbox we are fetching emails from (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only. (optional, default to false)
     - parameter before: (query) Filter for emails that were before after the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitForLatestEmail(inboxId: UUID? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sort: Sort_waitForLatestEmail? = nil, delay: Int64? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Email?, _ error: Error?) -> Void)) {
        waitForLatestEmailWithRequestBuilder(inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly, before: before, since: since, sort: sort, delay: delay).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch inbox's latest email or if empty wait for an email to arrive
     - GET /waitForLatestEmail
     - Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are fetching emails from (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only. (optional, default to false)
     - parameter before: (query) Filter for emails that were before after the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<Email> 
     */
    open class func waitForLatestEmailWithRequestBuilder(inboxId: UUID? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, before: Date? = nil, since: Date? = nil, sort: Sort_waitForLatestEmail? = nil, delay: Int64? = nil) -> RequestBuilder<Email> {
        let path = "/waitForLatestEmail"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "timeout": timeout?.encodeToJSON(),
            "unreadOnly": unreadOnly?.encodeToJSON(),
            "before": before?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "delay": delay?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Email>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForMatchingEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait or return list of emails that match simple matching patterns
     
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater or equal to 1 
     - parameter matchOptions: (body)  
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitForMatchingEmails(inboxId: UUID, count: Int, matchOptions: MatchOptions, before: Date? = nil, since: Date? = nil, sort: Sort_waitForMatchingEmails? = nil, delay: Int64? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [EmailPreview]?, _ error: Error?) -> Void)) {
        waitForMatchingEmailsWithRequestBuilder(inboxId: inboxId, count: count, matchOptions: matchOptions, before: before, since: since, sort: sort, delay: delay, timeout: timeout, unreadOnly: unreadOnly).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wait or return list of emails that match simple matching patterns
     - POST /waitForMatchingEmails
     - Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are fetching emails from 
     - parameter count: (query) Number of emails to wait for. Must be greater or equal to 1 
     - parameter matchOptions: (body)  
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - returns: RequestBuilder<[EmailPreview]> 
     */
    open class func waitForMatchingEmailsWithRequestBuilder(inboxId: UUID, count: Int, matchOptions: MatchOptions, before: Date? = nil, since: Date? = nil, sort: Sort_waitForMatchingEmails? = nil, delay: Int64? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil) -> RequestBuilder<[EmailPreview]> {
        let path = "/waitForMatchingEmails"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: matchOptions)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId.encodeToJSON(),
            "count": count.encodeToJSON(),
            "before": before?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "delay": delay?.encodeToJSON(),
            "timeout": timeout?.encodeToJSON(),
            "unreadOnly": unreadOnly?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[EmailPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForMatchingFirstEmail: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait for or return the first email that matches provided MatchOptions array
     
     - parameter inboxId: (query) Id of the inbox we are matching an email for 
     - parameter matchOptions: (body)  
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitForMatchingFirstEmail(inboxId: UUID, matchOptions: MatchOptions, timeout: Int64? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, sort: Sort_waitForMatchingFirstEmail? = nil, delay: Int64? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Email?, _ error: Error?) -> Void)) {
        waitForMatchingFirstEmailWithRequestBuilder(inboxId: inboxId, matchOptions: matchOptions, timeout: timeout, unreadOnly: unreadOnly, since: since, before: before, sort: sort, delay: delay).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wait for or return the first email that matches provided MatchOptions array
     - POST /waitForMatchingFirstEmail
     - Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox we are matching an email for 
     - parameter matchOptions: (body)  
     - parameter timeout: (query) Max milliseconds to wait (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<Email> 
     */
    open class func waitForMatchingFirstEmailWithRequestBuilder(inboxId: UUID, matchOptions: MatchOptions, timeout: Int64? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, sort: Sort_waitForMatchingFirstEmail? = nil, delay: Int64? = nil) -> RequestBuilder<Email> {
        let path = "/waitForMatchingFirstEmail"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: matchOptions)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId.encodeToJSON(),
            "timeout": timeout?.encodeToJSON(),
            "unreadOnly": unreadOnly?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "delay": delay?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Email>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_waitForNthEmail: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
     
     - parameter inboxId: (query) Id of the inbox you are fetching emails from (optional)
     - parameter index: (query) Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 (optional, default to 0)
     - parameter timeout: (query) Max milliseconds to wait for the nth email if not already present (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitForNthEmail(inboxId: UUID? = nil, index: Int? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, sort: Sort_waitForNthEmail? = nil, delay: Int64? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Email?, _ error: Error?) -> Void)) {
        waitForNthEmailWithRequestBuilder(inboxId: inboxId, index: index, timeout: timeout, unreadOnly: unreadOnly, since: since, before: before, sort: sort, delay: delay).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
     - GET /waitForNthEmail
     - If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Id of the inbox you are fetching emails from (optional)
     - parameter index: (query) Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 (optional, default to 0)
     - parameter timeout: (query) Max milliseconds to wait for the nth email if not already present (optional)
     - parameter unreadOnly: (query) Optional filter for unread only (optional, default to false)
     - parameter since: (query) Filter for emails that were received after the given timestamp (optional)
     - parameter before: (query) Filter for emails that were received before the given timestamp (optional)
     - parameter sort: (query) Sort direction (optional)
     - parameter delay: (query) Max milliseconds delay between calls (optional)
     - returns: RequestBuilder<Email> 
     */
    open class func waitForNthEmailWithRequestBuilder(inboxId: UUID? = nil, index: Int? = nil, timeout: Int64? = nil, unreadOnly: Bool? = nil, since: Date? = nil, before: Date? = nil, sort: Sort_waitForNthEmail? = nil, delay: Int64? = nil) -> RequestBuilder<Email> {
        let path = "/waitForNthEmail"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId?.encodeToJSON(),
            "index": index?.encodeToJSON(),
            "timeout": timeout?.encodeToJSON(),
            "unreadOnly": unreadOnly?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "delay": delay?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Email>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Wait for an SMS message to match the provided filter conditions such as body contains keyword.
     
     - parameter waitForSmsConditions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func waitForSms(waitForSmsConditions: WaitForSmsConditions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [SmsPreview]?, _ error: Error?) -> Void)) {
        waitForSmsWithRequestBuilder(waitForSmsConditions: waitForSmsConditions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wait for an SMS message to match the provided filter conditions such as body contains keyword.
     - POST /waitForSms
     - Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter waitForSmsConditions: (body)  
     - returns: RequestBuilder<[SmsPreview]> 
     */
    open class func waitForSmsWithRequestBuilder(waitForSmsConditions: WaitForSmsConditions) -> RequestBuilder<[SmsPreview]> {
        let path = "/waitForSms"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: waitForSmsConditions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[SmsPreview]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}