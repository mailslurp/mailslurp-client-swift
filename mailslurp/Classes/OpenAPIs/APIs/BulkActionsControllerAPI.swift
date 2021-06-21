//
// BulkActionsControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class BulkActionsControllerAPI : NSObject {
    /**
     Bulk create Inboxes (email addresses)
     
     - parameter count: (query) Number of inboxes to be created in bulk 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[Inbox]>
     */
    open class func bulkCreateInboxes( count: Int, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[Inbox]> {
        let deferred = Promise<[Inbox]>.pending()
        bulkCreateInboxesWithRequestBuilder(count: count).execute(apiResponseQueue) { result -> Void in
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
     Bulk create Inboxes (email addresses)
     - POST /bulk/inboxes
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter count: (query) Number of inboxes to be created in bulk 
     - returns: RequestBuilder<[Inbox]> 
     */
    open class func bulkCreateInboxesWithRequestBuilder(count: Int) -> RequestBuilder<[Inbox]> {
        let path = "/bulk/inboxes"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "count": count.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Inbox]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Bulk Delete Inboxes
     
     - parameter ids: (body) ids 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func bulkDeleteInboxes( ids: [UUID], apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        bulkDeleteInboxesWithRequestBuilder(ids: ids).execute(apiResponseQueue) { result -> Void in
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
     Bulk Delete Inboxes
     - DELETE /bulk/inboxes
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter ids: (body) ids 
     - returns: RequestBuilder<Void> 
     */
    open class func bulkDeleteInboxesWithRequestBuilder(ids: [UUID]) -> RequestBuilder<Void> {
        let path = "/bulk/inboxes"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ids)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Bulk Send Emails
     
     - parameter bulkSendEmailOptions: (body) bulkSendEmailOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func bulkSendEmails( bulkSendEmailOptions: BulkSendEmailOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        bulkSendEmailsWithRequestBuilder(bulkSendEmailOptions: bulkSendEmailOptions).execute(apiResponseQueue) { result -> Void in
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
     Bulk Send Emails
     - POST /bulk/send
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter bulkSendEmailOptions: (body) bulkSendEmailOptions 
     - returns: RequestBuilder<Void> 
     */
    open class func bulkSendEmailsWithRequestBuilder(bulkSendEmailOptions: BulkSendEmailOptions) -> RequestBuilder<Void> {
        let path = "/bulk/send"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bulkSendEmailOptions)

        let url = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
