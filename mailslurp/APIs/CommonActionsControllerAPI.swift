//
// CommonActionsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class CommonActionsControllerAPI : NSObject {
    /**
     * enum for parameter inboxType
     */
    public enum InboxType_createNewEmailAddress: String, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpInbox = "SMTP_INBOX"
    }

    /**
     Create new random inbox
     
     - parameter allowTeamAccess: (query)  (optional)
     - parameter useDomainPool: (query)  (optional)
     - parameter expiresAt: (query)  (optional)
     - parameter expiresIn: (query)  (optional)
     - parameter emailAddress: (query)  (optional)
     - parameter inboxType: (query)  (optional)
     - parameter _description: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter favourite: (query)  (optional)
     - parameter virtualInbox: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<InboxDto>
     */
    open class func createNewEmailAddress( allowTeamAccess: Bool? = nil,  useDomainPool: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  emailAddress: String? = nil,  inboxType: InboxType_createNewEmailAddress? = nil,  _description: String? = nil,  name: String? = nil,  tags: [String]? = nil,  favourite: Bool? = nil,  virtualInbox: Bool? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<InboxDto> {
        let deferred = Promise<InboxDto>.pending()
        createNewEmailAddressWithRequestBuilder(allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, _description: _description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox).execute(apiResponseQueue) { result -> Void in
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
     Create new random inbox
     - POST /newEmailAddress
     - Returns an Inbox with an `id` and an `emailAddress`
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter allowTeamAccess: (query)  (optional)
     - parameter useDomainPool: (query)  (optional)
     - parameter expiresAt: (query)  (optional)
     - parameter expiresIn: (query)  (optional)
     - parameter emailAddress: (query)  (optional)
     - parameter inboxType: (query)  (optional)
     - parameter _description: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter favourite: (query)  (optional)
     - parameter virtualInbox: (query)  (optional)
     - returns: RequestBuilder<InboxDto> 
     */
    open class func createNewEmailAddressWithRequestBuilder(allowTeamAccess: Bool? = nil, useDomainPool: Bool? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, emailAddress: String? = nil, inboxType: InboxType_createNewEmailAddress? = nil, _description: String? = nil, name: String? = nil, tags: [String]? = nil, favourite: Bool? = nil, virtualInbox: Bool? = nil) -> RequestBuilder<InboxDto> {
        let path = "/newEmailAddress"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "allowTeamAccess": allowTeamAccess?.encodeToJSON(),
            "useDomainPool": useDomainPool?.encodeToJSON(),
            "expiresAt": expiresAt?.encodeToJSON(),
            "expiresIn": expiresIn?.encodeToJSON(),
            "emailAddress": emailAddress?.encodeToJSON(),
            "inboxType": inboxType?.encodeToJSON(),
            "description": _description?.encodeToJSON(),
            "name": name?.encodeToJSON(),
            "tags": tags?.encodeToJSON(),
            "favourite": favourite?.encodeToJSON(),
            "virtualInbox": virtualInbox?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InboxDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter inboxType
     */
    public enum InboxType_createRandomInbox: String, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpInbox = "SMTP_INBOX"
    }

    /**
     Create new random inbox
     
     - parameter allowTeamAccess: (query)  (optional)
     - parameter useDomainPool: (query)  (optional)
     - parameter expiresAt: (query)  (optional)
     - parameter expiresIn: (query)  (optional)
     - parameter emailAddress: (query)  (optional)
     - parameter inboxType: (query)  (optional)
     - parameter _description: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter favourite: (query)  (optional)
     - parameter virtualInbox: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<InboxDto>
     */
    open class func createRandomInbox( allowTeamAccess: Bool? = nil,  useDomainPool: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  emailAddress: String? = nil,  inboxType: InboxType_createRandomInbox? = nil,  _description: String? = nil,  name: String? = nil,  tags: [String]? = nil,  favourite: Bool? = nil,  virtualInbox: Bool? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<InboxDto> {
        let deferred = Promise<InboxDto>.pending()
        createRandomInboxWithRequestBuilder(allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, _description: _description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox).execute(apiResponseQueue) { result -> Void in
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
     Create new random inbox
     - POST /createInbox
     - Returns an Inbox with an `id` and an `emailAddress`
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter allowTeamAccess: (query)  (optional)
     - parameter useDomainPool: (query)  (optional)
     - parameter expiresAt: (query)  (optional)
     - parameter expiresIn: (query)  (optional)
     - parameter emailAddress: (query)  (optional)
     - parameter inboxType: (query)  (optional)
     - parameter _description: (query)  (optional)
     - parameter name: (query)  (optional)
     - parameter tags: (query)  (optional)
     - parameter favourite: (query)  (optional)
     - parameter virtualInbox: (query)  (optional)
     - returns: RequestBuilder<InboxDto> 
     */
    open class func createRandomInboxWithRequestBuilder(allowTeamAccess: Bool? = nil, useDomainPool: Bool? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, emailAddress: String? = nil, inboxType: InboxType_createRandomInbox? = nil, _description: String? = nil, name: String? = nil, tags: [String]? = nil, favourite: Bool? = nil, virtualInbox: Bool? = nil) -> RequestBuilder<InboxDto> {
        let path = "/createInbox"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "allowTeamAccess": allowTeamAccess?.encodeToJSON(),
            "useDomainPool": useDomainPool?.encodeToJSON(),
            "expiresAt": expiresAt?.encodeToJSON(),
            "expiresIn": expiresIn?.encodeToJSON(),
            "emailAddress": emailAddress?.encodeToJSON(),
            "inboxType": inboxType?.encodeToJSON(),
            "description": _description?.encodeToJSON(),
            "name": name?.encodeToJSON(),
            "tags": tags?.encodeToJSON(),
            "favourite": favourite?.encodeToJSON(),
            "virtualInbox": virtualInbox?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<InboxDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete inbox email address by inbox id
     
     - parameter inboxId: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteEmailAddress( inboxId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteEmailAddressWithRequestBuilder(inboxId: inboxId).execute(apiResponseQueue) { result -> Void in
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
     Delete inbox email address by inbox id
     - DELETE /deleteEmailAddress
     - Deletes inbox email address
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteEmailAddressWithRequestBuilder(inboxId: UUID) -> RequestBuilder<Void> {
        let path = "/deleteEmailAddress"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete all emails in an inbox
     
     - parameter inboxId: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func emptyInbox( inboxId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        emptyInboxWithRequestBuilder(inboxId: inboxId).execute(apiResponseQueue) { result -> Void in
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
     Delete all emails in an inbox
     - DELETE /emptyInbox
     - Deletes all emails
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query)  
     - returns: RequestBuilder<Void> 
     */
    open class func emptyInboxWithRequestBuilder(inboxId: UUID) -> RequestBuilder<Void> {
        let path = "/emptyInbox"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": inboxId.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Send an email
     
     - parameter simpleSendEmailOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func sendEmailSimple( simpleSendEmailOptions: SimpleSendEmailOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        sendEmailSimpleWithRequestBuilder(simpleSendEmailOptions: simpleSendEmailOptions).execute(apiResponseQueue) { result -> Void in
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
     Send an email
     - POST /sendEmail
     - If no senderId or inboxId provided a random email address will be used to send from.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter simpleSendEmailOptions: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func sendEmailSimpleWithRequestBuilder(simpleSendEmailOptions: SimpleSendEmailOptions) -> RequestBuilder<Void> {
        let path = "/sendEmail"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: simpleSendEmailOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
