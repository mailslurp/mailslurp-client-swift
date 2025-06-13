//
// AliasControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
@preconcurrency import PromiseKit

@objcMembers open class AliasControllerAPI : NSObject {

    /**
     Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
     
     - parameter createAliasOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<AliasDto>
     */
    open class func createAlias(createAliasOptions: CreateAliasOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<AliasDto> {
        let deferred = Promise<AliasDto>.pending()
        createAliasWithRequestBuilder(createAliasOptions: createAliasOptions, apiConfiguration: apiConfiguration).execute { result in
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
     Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
     - POST /aliases
     - Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter createAliasOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AliasDto> 
     */
    open class func createAliasWithRequestBuilder(createAliasOptions: CreateAliasOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<AliasDto> {
        let localVariablePath = "/aliases"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createAliasOptions, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasDto>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete an email alias
     
     - parameter aliasId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<Void>
     */
    open class func deleteAlias(aliasId: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteAliasWithRequestBuilder(aliasId: aliasId, apiConfiguration: apiConfiguration).execute { result in
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
     Delete an email alias
     - DELETE /aliases/{aliasId}
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAliasWithRequestBuilder(aliasId: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<Void> {
        var localVariablePath = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
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
     Get an email alias
     
     - parameter aliasId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<AliasDto>
     */
    open class func getAlias(aliasId: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<AliasDto> {
        let deferred = Promise<AliasDto>.pending()
        getAliasWithRequestBuilder(aliasId: aliasId, apiConfiguration: apiConfiguration).execute { result in
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
     Get an email alias
     - GET /aliases/{aliasId}
     - Get an email alias by ID
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AliasDto> 
     */
    open class func getAliasWithRequestBuilder(aliasId: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<AliasDto> {
        var localVariablePath = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasDto>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliasEmails: String, Sendable, CaseIterable {
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<PageEmailProjection>
     */
    open class func getAliasEmails(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasEmails? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<PageEmailProjection> {
        let deferred = Promise<PageEmailProjection>.pending()
        getAliasEmailsWithRequestBuilder(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before, apiConfiguration: apiConfiguration).execute { result in
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
     Get emails for an alias
     - GET /aliases/{aliasId}/emails
     - Get paginated emails for an alias by ID
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index alias email list pagination (optional, default to 0)
     - parameter size: (query) Optional page size alias email list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageEmailProjection> 
     */
    open class func getAliasEmailsWithRequestBuilder(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasEmails? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<PageEmailProjection> {
        var localVariablePath = "/aliases/{aliasId}/emails"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "since": (wrappedValue: since?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "before": (wrappedValue: before?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageEmailProjection>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliasThreads: String, Sendable, CaseIterable {
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
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<PageAliasThreadProjection>
     */
    open class func getAliasThreads(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasThreads? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<PageAliasThreadProjection> {
        let deferred = Promise<PageAliasThreadProjection>.pending()
        getAliasThreadsWithRequestBuilder(aliasId: aliasId, page: page, size: size, sort: sort, since: since, before: before, apiConfiguration: apiConfiguration).execute { result in
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
     Get threads created for an alias
     - GET /aliases/{aliasId}/threads
     - Returns threads created for an email alias in paginated form
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageAliasThreadProjection> 
     */
    open class func getAliasThreadsWithRequestBuilder(aliasId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getAliasThreads? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<PageAliasThreadProjection> {
        var localVariablePath = "/aliases/{aliasId}/threads"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "since": (wrappedValue: since?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "before": (wrappedValue: before?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageAliasThreadProjection>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAliases: String, Sendable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all email aliases you have created
     
     - parameter search: (query) Optional search term (optional)
     - parameter page: (query) Optional page index in alias list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in alias list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<PageAlias>
     */
    open class func getAliases(search: String? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getAliases? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<PageAlias> {
        let deferred = Promise<PageAlias>.pending()
        getAliasesWithRequestBuilder(search: search, page: page, size: size, sort: sort, since: since, before: before, apiConfiguration: apiConfiguration).execute { result in
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
     Get all email aliases you have created
     - GET /aliases
     - Get all email aliases in paginated form
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter search: (query) Optional search term (optional)
     - parameter page: (query) Optional page index in alias list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in alias list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageAlias> 
     */
    open class func getAliasesWithRequestBuilder(search: String? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getAliases? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<PageAlias> {
        let localVariablePath = "/aliases"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": (wrappedValue: search?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "page": (wrappedValue: page?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "since": (wrappedValue: since?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "before": (wrappedValue: before?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageAlias>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Get a thread
     
     - parameter threadId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<AliasThreadProjection>
     */
    open class func getThread(threadId: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<AliasThreadProjection> {
        let deferred = Promise<AliasThreadProjection>.pending()
        getThreadWithRequestBuilder(threadId: threadId, apiConfiguration: apiConfiguration).execute { result in
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
     Get a thread
     - GET /aliases/threads/{threadId}
     - Return a thread associated with an alias
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter threadId: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AliasThreadProjection> 
     */
    open class func getThreadWithRequestBuilder(threadId: UUID, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<AliasThreadProjection> {
        var localVariablePath = "/aliases/threads/{threadId}"
        let threadIdPreEscape = "\(APIHelper.mapValueToPathItem(threadId))"
        let threadIdPostEscape = threadIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{threadId}", with: threadIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasThreadProjection>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getThreadsPaginated: String, Sendable, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all threads
     
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<PageAliasThreadProjection>
     */
    open class func getThreadsPaginated(page: Int? = nil, size: Int? = nil, sort: Sort_getThreadsPaginated? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<PageAliasThreadProjection> {
        let deferred = Promise<PageAliasThreadProjection>.pending()
        getThreadsPaginatedWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before, apiConfiguration: apiConfiguration).execute { result in
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
     Get all threads
     - GET /aliases/threads
     - Returns threads created for all aliases in paginated form
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter page: (query) Optional page index in thread list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in thread list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Optional filter by sent after given date time (optional)
     - parameter before: (query) Optional filter by sent before given date time (optional)
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<PageAliasThreadProjection> 
     */
    open class func getThreadsPaginatedWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getThreadsPaginated? = nil, since: Date? = nil, before: Date? = nil, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<PageAliasThreadProjection> {
        let localVariablePath = "/aliases/threads"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: any Sendable]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "size": (wrappedValue: size?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "sort": (wrappedValue: sort?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "since": (wrappedValue: since?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
            "before": (wrappedValue: before?.asParameter(codableHelper: apiConfiguration.codableHelper), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageAliasThreadProjection>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Reply to an email
     
     - parameter aliasId: (path) ID of the alias that email belongs to 
     - parameter emailId: (path) ID of the email that should be replied to 
     - parameter replyToAliasEmailOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<SentEmailDto>
     */
    open class func replyToAliasEmail(aliasId: UUID, emailId: UUID, replyToAliasEmailOptions: ReplyToAliasEmailOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<SentEmailDto> {
        let deferred = Promise<SentEmailDto>.pending()
        replyToAliasEmailWithRequestBuilder(aliasId: aliasId, emailId: emailId, replyToAliasEmailOptions: replyToAliasEmailOptions, apiConfiguration: apiConfiguration).execute { result in
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
     Reply to an email
     - PUT /aliases/{aliasId}/emails/{emailId}
     - Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path) ID of the alias that email belongs to 
     - parameter emailId: (path) ID of the email that should be replied to 
     - parameter replyToAliasEmailOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func replyToAliasEmailWithRequestBuilder(aliasId: UUID, emailId: UUID, replyToAliasEmailOptions: ReplyToAliasEmailOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<SentEmailDto> {
        var localVariablePath = "/aliases/{aliasId}/emails/{emailId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let emailIdPreEscape = "\(APIHelper.mapValueToPathItem(emailId))"
        let emailIdPostEscape = emailIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{emailId}", with: emailIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: replyToAliasEmailOptions, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SentEmailDto>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Send an email from an alias inbox
     
     - parameter aliasId: (path)  
     - parameter sendEmailOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<SentEmailDto>
     */
    open class func sendAliasEmail(aliasId: UUID, sendEmailOptions: SendEmailOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<SentEmailDto> {
        let deferred = Promise<SentEmailDto>.pending()
        sendAliasEmailWithRequestBuilder(aliasId: aliasId, sendEmailOptions: sendEmailOptions, apiConfiguration: apiConfiguration).execute { result in
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
     Send an email from an alias inbox
     - POST /aliases/{aliasId}/emails
     - Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter sendEmailOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<SentEmailDto> 
     */
    open class func sendAliasEmailWithRequestBuilder(aliasId: UUID, sendEmailOptions: SendEmailOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<SentEmailDto> {
        var localVariablePath = "/aliases/{aliasId}/emails"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sendEmailOptions, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SentEmailDto>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Update an email alias
     
     - parameter aliasId: (path)  
     - parameter updateAliasOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: Promise<AliasDto>
     */
    open class func updateAlias(aliasId: UUID, updateAliasOptions: UpdateAliasOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> Promise<AliasDto> {
        let deferred = Promise<AliasDto>.pending()
        updateAliasWithRequestBuilder(aliasId: aliasId, updateAliasOptions: updateAliasOptions, apiConfiguration: apiConfiguration).execute { result in
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
     Update an email alias
     - PUT /aliases/{aliasId}
     - API Key:
       - type: apiKey x-api-key (HEADER)
       - name: API_KEY
     - parameter aliasId: (path)  
     - parameter updateAliasOptions: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<AliasDto> 
     */
    open class func updateAliasWithRequestBuilder(aliasId: UUID, updateAliasOptions: UpdateAliasOptions, apiConfiguration: mailslurpAPIConfiguration = mailslurpAPIConfiguration.shared) -> RequestBuilder<AliasDto> {
        var localVariablePath = "/aliases/{aliasId}"
        let aliasIdPreEscape = "\(APIHelper.mapValueToPathItem(aliasId))"
        let aliasIdPostEscape = aliasIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{aliasId}", with: aliasIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateAliasOptions, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: (any Sendable)?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AliasDto>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
