//
// ExportControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

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
     
     - parameter exportType: (query)  
     - parameter apiKey: (query)  
     - parameter outputFormat: (query)  
     - parameter filter: (query)  (optional)
     - parameter listSeparatorToken: (query)  (optional)
     - parameter excludePreviouslyExported: (query)  (optional)
     - parameter createdEarliestTime: (query)  (optional)
     - parameter createdOldestTime: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func exportEntities(exportType: ExportType_exportEntities, apiKey: String, outputFormat: OutputFormat_exportEntities, filter: String? = nil, listSeparatorToken: String? = nil, excludePreviouslyExported: Bool? = nil, createdEarliestTime: Date? = nil, createdOldestTime: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [Data]?, _ error: Error?) -> Void)) {
        exportEntitiesWithRequestBuilder(exportType: exportType, apiKey: apiKey, outputFormat: outputFormat, filter: filter, listSeparatorToken: listSeparatorToken, excludePreviouslyExported: excludePreviouslyExported, createdEarliestTime: createdEarliestTime, createdOldestTime: createdOldestTime).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Export inboxes link callable via browser
     - GET /export
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter exportType: (query)  
     - parameter apiKey: (query)  
     - parameter outputFormat: (query)  
     - parameter filter: (query)  (optional)
     - parameter listSeparatorToken: (query)  (optional)
     - parameter excludePreviouslyExported: (query)  (optional)
     - parameter createdEarliestTime: (query)  (optional)
     - parameter createdOldestTime: (query)  (optional)
     - returns: RequestBuilder<[Data]> 
     */
    open class func exportEntitiesWithRequestBuilder(exportType: ExportType_exportEntities, apiKey: String, outputFormat: OutputFormat_exportEntities, filter: String? = nil, listSeparatorToken: String? = nil, excludePreviouslyExported: Bool? = nil, createdEarliestTime: Date? = nil, createdOldestTime: Date? = nil) -> RequestBuilder<[Data]> {
        let path = "/export"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "exportType": exportType.encodeToJSON(),
            "apiKey": apiKey.encodeToJSON(),
            "outputFormat": outputFormat.encodeToJSON(),
            "filter": filter?.encodeToJSON(),
            "listSeparatorToken": listSeparatorToken?.encodeToJSON(),
            "excludePreviouslyExported": excludePreviouslyExported?.encodeToJSON(),
            "createdEarliestTime": createdEarliestTime?.encodeToJSON(),
            "createdOldestTime": createdOldestTime?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[Data]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

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
     
     - parameter exportType: (query)  
     - parameter exportOptions: (body)  
     - parameter apiKey: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getExportLink(exportType: ExportType_getExportLink, exportOptions: ExportOptions, apiKey: String? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: ExportLink?, _ error: Error?) -> Void)) {
        getExportLinkWithRequestBuilder(exportType: exportType, exportOptions: exportOptions, apiKey: apiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get export link
     - POST /export
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter exportType: (query)  
     - parameter exportOptions: (body)  
     - parameter apiKey: (query)  (optional)
     - returns: RequestBuilder<ExportLink> 
     */
    open class func getExportLinkWithRequestBuilder(exportType: ExportType_getExportLink, exportOptions: ExportOptions, apiKey: String? = nil) -> RequestBuilder<ExportLink> {
        let path = "/export"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: exportOptions)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "exportType": exportType.encodeToJSON(),
            "apiKey": apiKey?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ExportLink>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
