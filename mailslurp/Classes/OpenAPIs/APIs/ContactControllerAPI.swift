//
// ContactControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc open class ContactControllerAPI : NSObject {
    /**
     Create a contact
     
     - parameter createContactOptions: (body) createContactOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createContact(createContactOptions: CreateContactOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: ContactDto?,_ error: Error?) -> Void)) {
        createContactWithRequestBuilder(createContactOptions: createContactOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a contact
     - POST /contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createContactOptions: (body) createContactOptions 
     - returns: RequestBuilder<ContactDto> 
     */
    open class func createContactWithRequestBuilder(createContactOptions: CreateContactOptions) -> RequestBuilder<ContactDto> {
        let path = "/contacts"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createContactOptions)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ContactDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete contact
     
     - parameter contactId: (path) contactId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteContact(contactId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteContactWithRequestBuilder(contactId: contactId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete contact
     - DELETE /contacts/{contactId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter contactId: (path) contactId 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteContactWithRequestBuilder(contactId: UUID) -> RequestBuilder<Void> {
        var path = "/contacts/{contactId}"
        let contactIdPreEscape = "\(APIHelper.mapValueToPathItem(contactId))"
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAllContacts: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all contacts
     
     - parameter page: (query) Optional page index in inbox list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllContacts(page: Int? = nil, size: Int? = nil, sort: Sort_getAllContacts? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageContactProjection?,_ error: Error?) -> Void)) {
        getAllContactsWithRequestBuilder(page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all contacts
     - GET /contacts/paginated
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in inbox list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageContactProjection> 
     */
    open class func getAllContactsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllContacts? = nil) -> RequestBuilder<PageContactProjection> {
        let path = "/contacts/paginated"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(), 
            "size": size?.encodeToJSON(), 
            "sort": sort?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PageContactProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get contact
     
     - parameter contactId: (path) contactId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getContact(contactId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: ContactDto?,_ error: Error?) -> Void)) {
        getContactWithRequestBuilder(contactId: contactId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get contact
     - GET /contacts/{contactId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter contactId: (path) contactId 
     - returns: RequestBuilder<ContactDto> 
     */
    open class func getContactWithRequestBuilder(contactId: UUID) -> RequestBuilder<ContactDto> {
        var path = "/contacts/{contactId}"
        let contactIdPreEscape = "\(APIHelper.mapValueToPathItem(contactId))"
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ContactDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all contacts
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getContacts(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [ContactProjection]?,_ error: Error?) -> Void)) {
        getContactsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all contacts
     - GET /contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[ContactProjection]> 
     */
    open class func getContactsWithRequestBuilder() -> RequestBuilder<[ContactProjection]> {
        let path = "/contacts"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[ContactProjection]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
