//
// GroupControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc open class GroupControllerAPI : NSObject {
    /**
     Add contacts to a group
     
     - parameter groupId: (path)  
     - parameter updateGroupContacts: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addContactsToGroup(groupId: UUID, updateGroupContacts: UpdateGroupContacts, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: GroupContactsDto?, _ error: Error?) -> Void)) {
        addContactsToGroupWithRequestBuilder(groupId: groupId, updateGroupContacts: updateGroupContacts).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add contacts to a group
     - PUT /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - parameter updateGroupContacts: (body)  
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func addContactsToGroupWithRequestBuilder(groupId: UUID, updateGroupContacts: UpdateGroupContacts) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContacts)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Create a group
     
     - parameter createGroupOptions: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createGroup(createGroupOptions: CreateGroupOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: GroupDto?, _ error: Error?) -> Void)) {
        createGroupWithRequestBuilder(createGroupOptions: createGroupOptions).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a group
     - POST /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createGroupOptions: (body)  
     - returns: RequestBuilder<GroupDto> 
     */
    open class func createGroupWithRequestBuilder(createGroupOptions: CreateGroupOptions) -> RequestBuilder<GroupDto> {
        let path = "/groups"
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createGroupOptions)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GroupDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Delete group
     
     - parameter groupId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteGroup(groupId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteGroupWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete group
     - DELETE /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupWithRequestBuilder(groupId: UUID) -> RequestBuilder<Void> {
        var path = "/groups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
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
    public enum Sort_getAllGroups: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all Contact Groups in paginated format
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllGroups(page: Int? = nil, size: Int? = nil, sort: Sort_getAllGroups? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageGroupProjection?, _ error: Error?) -> Void)) {
        getAllGroupsWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all Contact Groups in paginated format
     - GET /groups/paginated
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageGroupProjection> 
     */
    open class func getAllGroupsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllGroups? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageGroupProjection> {
        let path = "/groups/paginated"
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

        let requestBuilder: RequestBuilder<PageGroupProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get group
     
     - parameter groupId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroup(groupId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: GroupDto?, _ error: Error?) -> Void)) {
        getGroupWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get group
     - GET /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - returns: RequestBuilder<GroupDto> 
     */
    open class func getGroupWithRequestBuilder(groupId: UUID) -> RequestBuilder<GroupDto> {
        var path = "/groups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GroupDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get group and contacts belonging to it
     
     - parameter groupId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupWithContacts(groupId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: GroupContactsDto?, _ error: Error?) -> Void)) {
        getGroupWithContactsWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get group and contacts belonging to it
     - GET /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func getGroupWithContactsWithRequestBuilder(groupId: UUID) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getGroupWithContactsPaginated: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**

     - parameter groupId: (path)  
     - parameter page: (query) Optional page index in group contact pagination (optional, default to 0)
     - parameter size: (query) Optional page size in group contact pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroupWithContactsPaginated(groupId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getGroupWithContactsPaginated? = nil, since: Date? = nil, before: Date? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: PageContactProjection?, _ error: Error?) -> Void)) {
        getGroupWithContactsPaginatedWithRequestBuilder(groupId: groupId, page: page, size: size, sort: sort, since: since, before: before).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /groups/{groupId}/contacts-paginated
     - Get group and paginated contacts belonging to it
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - parameter page: (query) Optional page index in group contact pagination (optional, default to 0)
     - parameter size: (query) Optional page size in group contact pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageContactProjection> 
     */
    open class func getGroupWithContactsPaginatedWithRequestBuilder(groupId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getGroupWithContactsPaginated? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageContactProjection> {
        var path = "/groups/{groupId}/contacts-paginated"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
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

        let requestBuilder: RequestBuilder<PageContactProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get all groups
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getGroups(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: [GroupProjection]?, _ error: Error?) -> Void)) {
        getGroupsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all groups
     - GET /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[GroupProjection]> 
     */
    open class func getGroupsWithRequestBuilder() -> RequestBuilder<[GroupProjection]> {
        let path = "/groups"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[GroupProjection]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Remove contacts from a group
     
     - parameter groupId: (path)  
     - parameter updateGroupContacts: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeContactsFromGroup(groupId: UUID, updateGroupContacts: UpdateGroupContacts, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue, completion: @escaping ((_ data: GroupContactsDto?, _ error: Error?) -> Void)) {
        removeContactsFromGroupWithRequestBuilder(groupId: groupId, updateGroupContacts: updateGroupContacts).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove contacts from a group
     - DELETE /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - parameter updateGroupContacts: (body)  
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func removeContactsFromGroupWithRequestBuilder(groupId: UUID, updateGroupContacts: UpdateGroupContacts) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContacts)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}