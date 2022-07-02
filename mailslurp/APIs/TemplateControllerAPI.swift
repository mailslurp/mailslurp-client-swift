//
// TemplateControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc open class TemplateControllerAPI : NSObject {
    /**
     Create a Template
     
     - parameter createTemplateOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createTemplate(createTemplateOptions: CreateTemplateOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: TemplateDto?, _ error: Error?) -> Void)) {
        createTemplateWithRequestBuilder(createTemplateOptions: createTemplateOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a Template
     - POST /templates
     - Create an email template with variables for use with templated transactional emails.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createTemplateOptions: (body)  
     - returns: RequestBuilder<TemplateDto> 
     */
    open class func createTemplateWithRequestBuilder(createTemplateOptions: CreateTemplateOptions) -> RequestBuilder<TemplateDto> {
        let path = "/templates"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTemplateOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TemplateDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete email template
     
     - parameter templateId: (path) Template ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTemplate(templateId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteTemplateWithRequestBuilder(templateId: templateId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete email template
     - DELETE /templates/{templateId}
     - Delete template
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter templateId: (path) Template ID 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteTemplateWithRequestBuilder(templateId: UUID) -> RequestBuilder<Void> {
        var path = "/templates/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
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
     * enum for parameter sort
     */
    public enum Sort_getAllTemplates: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     List templates
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllTemplates(page: Int? = nil, size: Int? = nil, sort: Sort_getAllTemplates? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageTemplateProjection?, _ error: Error?) -> Void)) {
        getAllTemplatesWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List templates
     - GET /templates/paginated
     - Get all templates in paginated format
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageTemplateProjection> 
     */
    open class func getAllTemplatesWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllTemplates? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageTemplateProjection> {
        let path = "/templates/paginated"
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

        let requestBuilder: RequestBuilder<PageTemplateProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get template
     
     - parameter templateId: (path) Template ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTemplate(templateId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: TemplateDto?, _ error: Error?) -> Void)) {
        getTemplateWithRequestBuilder(templateId: templateId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get template
     - GET /templates/{templateId}
     - Get email template
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter templateId: (path) Template ID 
     - returns: RequestBuilder<TemplateDto> 
     */
    open class func getTemplateWithRequestBuilder(templateId: UUID) -> RequestBuilder<TemplateDto> {
        var path = "/templates/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TemplateDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get template preview HTML
     
     - parameter templateId: (path) Template ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTemplatePreviewHtml(templateId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) {
        getTemplatePreviewHtmlWithRequestBuilder(templateId: templateId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get template preview HTML
     - GET /templates/{templateId}/preview/html
     - Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter templateId: (path) Template ID 
     - returns: RequestBuilder<String> 
     */
    open class func getTemplatePreviewHtmlWithRequestBuilder(templateId: UUID) -> RequestBuilder<String> {
        var path = "/templates/{templateId}/preview/html"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get template preview Json
     
     - parameter templateId: (path) Template ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTemplatePreviewJson(templateId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: TemplatePreview?, _ error: Error?) -> Void)) {
        getTemplatePreviewJsonWithRequestBuilder(templateId: templateId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get template preview Json
     - GET /templates/{templateId}/preview/json
     - Get email template preview with passed template variables in JSON format. Pass template variables as query params.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter templateId: (path) Template ID 
     - returns: RequestBuilder<TemplatePreview> 
     */
    open class func getTemplatePreviewJsonWithRequestBuilder(templateId: UUID) -> RequestBuilder<TemplatePreview> {
        var path = "/templates/{templateId}/preview/json"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TemplatePreview>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     List templates
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTemplates(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [TemplateProjection]?, _ error: Error?) -> Void)) {
        getTemplatesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List templates
     - GET /templates
     - Get all templates
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[TemplateProjection]> 
     */
    open class func getTemplatesWithRequestBuilder() -> RequestBuilder<[TemplateProjection]> {
        let path = "/templates"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[TemplateProjection]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update template
     
     - parameter templateId: (path) Template ID 
     - parameter createTemplateOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTemplate(templateId: UUID, createTemplateOptions: CreateTemplateOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: TemplateDto?, _ error: Error?) -> Void)) {
        updateTemplateWithRequestBuilder(templateId: templateId, createTemplateOptions: createTemplateOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update template
     - PUT /templates/{templateId}
     - Update email template
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter templateId: (path) Template ID 
     - parameter createTemplateOptions: (body)  
     - returns: RequestBuilder<TemplateDto> 
     */
    open class func updateTemplateWithRequestBuilder(templateId: UUID, createTemplateOptions: CreateTemplateOptions) -> RequestBuilder<TemplateDto> {
        var path = "/templates/{templateId}"
        let templateIdPreEscape = "\(APIHelper.mapValueToPathItem(templateId))"
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTemplateOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TemplateDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
