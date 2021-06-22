//
// ExportControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class ExportControllerAPI : NSObject {
    /**
     * enum for parameter exportType
     */
    public enum ExportType_exportEntities: String, CaseIterable {
        case inboxes = "INBOXES"
        case contacts = "CONTACTS"
        case attachments = "ATTACHMENTS"
        case emails = "EMAILS"
    }

    /**
     * enum for parameter outputFormat
     */
    public enum OutputFormat_exportEntities: String, CaseIterable {
        case _default = "CSV_DEFAULT"
        case excel = "CSV_EXCEL"
    }

    /**
     Export inboxes link callable via browser
     
     - parameter apiKey: (query) apiKey 
     - parameter exportType: (query) exportType 
     - parameter outputFormat: (query) outputFormat 
     - parameter createdEarliestTime: (query) createdEarliestTime (optional)
     - parameter createdOldestTime: (query) createdOldestTime (optional)
     - parameter excludePreviouslyExported: (query) excludePreviouslyExported (optional)
     - parameter filter: (query) filter (optional)
     - parameter listSeparatorToken: (query) listSeparatorToken (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Data>
     */
    open class func exportEntities( apiKey: String,  exportType: ExportType_exportEntities,  outputFormat: OutputFormat_exportEntities,  createdEarliestTime: Date? = nil,  createdOldestTime: Date? = nil,  excludePreviouslyExported: Bool? = nil,  filter: String? = nil,  listSeparatorToken: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Data> {
        let deferred = Promise<Data>.pending()
        exportEntitiesWithRequestBuilder(apiKey: apiKey, exportType: exportType, outputFormat: outputFormat, createdEarliestTime: createdEarliestTime, createdOldestTime: createdOldestTime, excludePreviouslyExported: excludePreviouslyExported, filter: filter, listSeparatorToken: listSeparatorToken).execute(apiResponseQueue) { result -> Void in
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
     Export inboxes link callable via browser
     - GET /export
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter apiKey: (query) apiKey 
     - parameter exportType: (query) exportType 
     - parameter outputFormat: (query) outputFormat 
     - parameter createdEarliestTime: (query) createdEarliestTime (optional)
     - parameter createdOldestTime: (query) createdOldestTime (optional)
     - parameter excludePreviouslyExported: (query) excludePreviouslyExported (optional)
     - parameter filter: (query) filter (optional)
     - parameter listSeparatorToken: (query) listSeparatorToken (optional)
     - returns: RequestBuilder<Data> 
     */
    open class func exportEntitiesWithRequestBuilder(apiKey: String, exportType: ExportType_exportEntities, outputFormat: OutputFormat_exportEntities, createdEarliestTime: Date? = nil, createdOldestTime: Date? = nil, excludePreviouslyExported: Bool? = nil, filter: String? = nil, listSeparatorToken: String? = nil) -> RequestBuilder<Data> {
        let path = "/export"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "apiKey": apiKey.encodeToJSON(),
            "createdEarliestTime": createdEarliestTime?.encodeToJSON(),
            "createdOldestTime": createdOldestTime?.encodeToJSON(),
            "excludePreviouslyExported": excludePreviouslyExported?.encodeToJSON(),
            "exportType": exportType.encodeToJSON(),
            "filter": filter?.encodeToJSON(),
            "listSeparatorToken": listSeparatorToken?.encodeToJSON(),
            "outputFormat": outputFormat.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter exportType
     */
    public enum ExportType_getExportLink: String, CaseIterable {
        case inboxes = "INBOXES"
        case contacts = "CONTACTS"
        case attachments = "ATTACHMENTS"
        case emails = "EMAILS"
    }

    /**
     Get export link
     
     - parameter exportType: (query) exportType 
     - parameter exportOptions: (body) exportOptions 
     - parameter apiKey: (query) apiKey (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<ExportLink>
     */
    open class func getExportLink( exportType: ExportType_getExportLink,  exportOptions: ExportOptions,  apiKey: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<ExportLink> {
        let deferred = Promise<ExportLink>.pending()
        getExportLinkWithRequestBuilder(exportType: exportType, exportOptions: exportOptions, apiKey: apiKey).execute(apiResponseQueue) { result -> Void in
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
     Get export link
     - POST /export
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter exportType: (query) exportType 
     - parameter exportOptions: (body) exportOptions 
     - parameter apiKey: (query) apiKey (optional)
     - returns: RequestBuilder<ExportLink> 
     */
    open class func getExportLinkWithRequestBuilder(exportType: ExportType_getExportLink, exportOptions: ExportOptions, apiKey: String? = nil) -> RequestBuilder<ExportLink> {
        let path = "/export"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: exportOptions)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "apiKey": apiKey?.encodeToJSON(),
            "exportType": exportType.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExportLink>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
