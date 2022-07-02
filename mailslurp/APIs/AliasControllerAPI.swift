//
// AliasControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc open class AliasControllerAPI : NSObject {
    /**
     Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
     
     - parameter createAliasOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAlias(createAliasOptions: CreateAliasOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: AliasDto?, _ error: Error?) -> Void)) {
        createAliasWithRequestBuilder(createAliasOptions: createAliasOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
     - POST /aliases
     - Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createAliasOptions: (body)  
     - returns: RequestBuilder<AliasDto> 
     */
    open class func createAliasWithRequestBuilder(createAliasOptions: CreateAliasOptions) -> RequestBuilder<AliasDto> {
        let path = "/aliases"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAliasOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AliasDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete an email alias
     
     - parameter aliasId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAlias(aliasId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteAliasWithRequestBuilder(aliasId: aliasId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete an email alias
     - DELETE /aliases/{aliasId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAliasWithRequestBuilder(aliasId: UUID) -> RequestBuilder<Void> {
        var path = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
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
     Get an email alias
     
     - parameter aliasId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAlias(aliasId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: AliasDto?, _ error: Error?) -> Void)) {
        getAliasWithRequestBuilder(aliasId: aliasId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get an email alias
     - GET /aliases/{aliasId}
     - Get an email alias by ID
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - returns: RequestBuilder<AliasDto> 
     */
    open class func getAliasWithRequestBuilder(aliasId: UUID) -> RequestBuilder<AliasDto> {
        var path = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AliasDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliasEmails: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get emails for an alias
     
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index alias email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size alias email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAliasEmails(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasEmails? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageEmailProjection?, _ error: Error?) -> Void)) {
        getAliasEmailsWithRequestBuilder(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get emails for an alias
     - GET /aliases/{aliasId}/emails
     - Get paginated emails for an alias by ID
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index alias email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size alias email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - returns: RequestBuilder<PageEmailProjection> 
     */
    open class func getAliasEmailsWithRequestBuilder(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasEmails? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageEmailProjection> {
        var path = "/aliases/{aliasId}/emails"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageEmailProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliasThreads: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get threads created for an alias
     
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAliasThreads(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasThreads? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageThreadProjection?, _ error: Error?) -> Void)) {
        getAliasThreadsWithRequestBuilder(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get threads created for an alias
     - GET /aliases/{aliasId}/threads
     - Returns threads created for an email alias in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - returns: RequestBuilder<PageThreadProjection> 
     */
    open class func getAliasThreadsWithRequestBuilder(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasThreads? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageThreadProjection> {
        var path = "/aliases/{aliasId}/threads"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageThreadProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliases: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all email aliases you have created
     
     - parameter page: (query) Optional page index in alias list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in alias list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAliases(page: Int? = nil, size: Int? = nil, sort: Sort_getAliases? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageAlias?, _ error: Error?) -> Void)) {
        getAliasesWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all email aliases you have created
     - GET /aliases
     - Get all email aliases in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in alias list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in alias list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageAlias> 
     */
    open class func getAliasesWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAliases? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageAlias> {
        let path = "/aliases"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
            "since": since?.encodeToJSON(),
            "before": before?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PageAlias>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Reply to an email
     
     - parameter aliasId: (path) ID of the alias that email belongs to 
     - parameter emailId: (path) ID of the email that should be replied to 
     - parameter replyToAliasEmailOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replyToAliasEmail(aliasId: UUID, emailId: UUID, replyToAliasEmailOptions: ReplyToAliasEmailOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: SentEmailDto?, _ error: Error?) -> Void)) {
        replyToAliasEmailWithRequestBuilder(aliasId: aliasId, emailId: emailId, replyToAliasEmailOptions: replyToAliasEmailOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Reply to an email
     - PUT /aliases/{aliasId}/emails/{emailId}
     - Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path) ID of the alias that email belongs to 
     - parameter emailId: (path) ID of the email that should be replied to 
     - parameter replyToAliasEmailOptions: (body)  
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func replyToAliasEmailWithRequestBuilder(aliasId: UUID, emailId: UUID, replyToAliasEmailOptions: ReplyToAliasEmailOptions) -> RequestBuilder<SentEmailDto> {
        var path = "/aliases/{aliasId}/emails/{emailId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replyToAliasEmailOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SentEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Send an email from an alias inbox
     
     - parameter aliasId: (path)  
     - parameter sendEmailOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sendAliasEmail(aliasId: UUID, sendEmailOptions: SendEmailOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: SentEmailDto?, _ error: Error?) -> Void)) {
        sendAliasEmailWithRequestBuilder(aliasId: aliasId, sendEmailOptions: sendEmailOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send an email from an alias inbox
     - POST /aliases/{aliasId}/emails
     - Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter sendEmailOptions: (body)  
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func sendAliasEmailWithRequestBuilder(aliasId: UUID, sendEmailOptions: SendEmailOptions) -> RequestBuilder<SentEmailDto> {
        var path = "/aliases/{aliasId}/emails"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sendEmailOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SentEmailDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update an email alias
     
     - parameter aliasId: (path)  
     - parameter updateAliasOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAlias(aliasId: UUID, updateAliasOptions: UpdateAliasOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: AliasDto?, _ error: Error?) -> Void)) {
        updateAliasWithRequestBuilder(aliasId: aliasId, updateAliasOptions: updateAliasOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update an email alias
     - PUT /aliases/{aliasId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter updateAliasOptions: (body)  
     - returns: RequestBuilder<AliasDto> 
     */
    open class func updateAliasWithRequestBuilder(aliasId: UUID, updateAliasOptions: UpdateAliasOptions) -> RequestBuilder<AliasDto> {
        var path = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateAliasOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AliasDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
