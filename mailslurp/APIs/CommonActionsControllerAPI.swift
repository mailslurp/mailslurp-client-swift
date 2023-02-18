//
// CommonActionsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

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
     - parameter useShortAddress: (query)  (optional)
     - returns: Promise<InboxDto>
     */
    open class func createNewEmailAddress( allowTeamAccess: Bool? = nil,  useDomainPool: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  emailAddress: String? = nil,  inboxType: InboxType_createNewEmailAddress? = nil,  _description: String? = nil,  name: String? = nil,  tags: [String]? = nil,  favourite: Bool? = nil,  virtualInbox: Bool? = nil,  useShortAddress: Bool? = nil) -> Promise<InboxDto> {
        let deferred = Promise<InboxDto>.pending()
        createNewEmailAddressWithRequestBuilder(allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, _description: _description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox, useShortAddress: useShortAddress).execute { result in
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
     - parameter useShortAddress: (query)  (optional)
     - returns: RequestBuilder<InboxDto> 
     */
    open class func createNewEmailAddressWithRequestBuilder(allowTeamAccess: Bool? = nil, useDomainPool: Bool? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, emailAddress: String? = nil, inboxType: InboxType_createNewEmailAddress? = nil, _description: String? = nil, name: String? = nil, tags: [String]? = nil, favourite: Bool? = nil, virtualInbox: Bool? = nil, useShortAddress: Bool? = nil) -> RequestBuilder<InboxDto> {
        let localVariablePath = "/newEmailAddress"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "allowTeamAccess": (wrappedValue: allowTeamAccess?.encodeToJSON(), isExplode: true),
            "useDomainPool": (wrappedValue: useDomainPool?.encodeToJSON(), isExplode: true),
            "expiresAt": (wrappedValue: expiresAt?.encodeToJSON(), isExplode: true),
            "expiresIn": (wrappedValue: expiresIn?.encodeToJSON(), isExplode: true),
            "emailAddress": (wrappedValue: emailAddress?.encodeToJSON(), isExplode: true),
            "inboxType": (wrappedValue: inboxType?.encodeToJSON(), isExplode: true),
            "description": (wrappedValue: _description?.encodeToJSON(), isExplode: true),
            "name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "tags": (wrappedValue: tags?.encodeToJSON(), isExplode: true),
            "favourite": (wrappedValue: favourite?.encodeToJSON(), isExplode: true),
            "virtualInbox": (wrappedValue: virtualInbox?.encodeToJSON(), isExplode: true),
            "useShortAddress": (wrappedValue: useShortAddress?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
     - parameter useShortAddress: (query)  (optional)
     - returns: Promise<InboxDto>
     */
    open class func createRandomInbox( allowTeamAccess: Bool? = nil,  useDomainPool: Bool? = nil,  expiresAt: Date? = nil,  expiresIn: Int64? = nil,  emailAddress: String? = nil,  inboxType: InboxType_createRandomInbox? = nil,  _description: String? = nil,  name: String? = nil,  tags: [String]? = nil,  favourite: Bool? = nil,  virtualInbox: Bool? = nil,  useShortAddress: Bool? = nil) -> Promise<InboxDto> {
        let deferred = Promise<InboxDto>.pending()
        createRandomInboxWithRequestBuilder(allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, _description: _description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox, useShortAddress: useShortAddress).execute { result in
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
     - parameter useShortAddress: (query)  (optional)
     - returns: RequestBuilder<InboxDto> 
     */
    open class func createRandomInboxWithRequestBuilder(allowTeamAccess: Bool? = nil, useDomainPool: Bool? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, emailAddress: String? = nil, inboxType: InboxType_createRandomInbox? = nil, _description: String? = nil, name: String? = nil, tags: [String]? = nil, favourite: Bool? = nil, virtualInbox: Bool? = nil, useShortAddress: Bool? = nil) -> RequestBuilder<InboxDto> {
        let localVariablePath = "/createInbox"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "allowTeamAccess": (wrappedValue: allowTeamAccess?.encodeToJSON(), isExplode: true),
            "useDomainPool": (wrappedValue: useDomainPool?.encodeToJSON(), isExplode: true),
            "expiresAt": (wrappedValue: expiresAt?.encodeToJSON(), isExplode: true),
            "expiresIn": (wrappedValue: expiresIn?.encodeToJSON(), isExplode: true),
            "emailAddress": (wrappedValue: emailAddress?.encodeToJSON(), isExplode: true),
            "inboxType": (wrappedValue: inboxType?.encodeToJSON(), isExplode: true),
            "description": (wrappedValue: _description?.encodeToJSON(), isExplode: true),
            "name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            "tags": (wrappedValue: tags?.encodeToJSON(), isExplode: true),
            "favourite": (wrappedValue: favourite?.encodeToJSON(), isExplode: true),
            "virtualInbox": (wrappedValue: virtualInbox?.encodeToJSON(), isExplode: true),
            "useShortAddress": (wrappedValue: useShortAddress?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete inbox email address by inbox id
     
     - parameter inboxId: (query)  
     - returns: Promise<Void>
     */
    open class func deleteEmailAddress( inboxId: UUID) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteEmailAddressWithRequestBuilder(inboxId: inboxId).execute { result in
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
        let localVariablePath = "/deleteEmailAddress"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete all emails in an inbox
     
     - parameter inboxId: (query)  
     - returns: Promise<Void>
     */
    open class func emptyInbox( inboxId: UUID) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        emptyInboxWithRequestBuilder(inboxId: inboxId).execute { result in
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
        let localVariablePath = "/emptyInbox"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Send an email
     
     - parameter simpleSendEmailOptions: (body)  
     - returns: Promise<Void>
     */
    open class func sendEmailSimple( simpleSendEmailOptions: SimpleSendEmailOptions) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        sendEmailSimpleWithRequestBuilder(simpleSendEmailOptions: simpleSendEmailOptions).execute { result in
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
        let localVariablePath = "/sendEmail"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: simpleSendEmailOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
