//
// GroupControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit

@objc open class GroupControllerAPI : NSObject {
    /**
     Add contacts to a group
     
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<GroupContactsDto>
     */
    open class func addContactsToGroup( groupId: UUID,  updateGroupContactsOption: UpdateGroupContacts, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<GroupContactsDto> {
        let deferred = Promise<GroupContactsDto>.pending()
        addContactsToGroupWithRequestBuilder(groupId: groupId, updateGroupContactsOption: updateGroupContactsOption).execute(apiResponseQueue) { result -> Void in
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
     Add contacts to a group
     - PUT /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func addContactsToGroupWithRequestBuilder(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContactsOption)

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
     
     - parameter createGroupOptions: (body) createGroupOptions 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<GroupDto>
     */
    open class func createGroup( createGroupOptions: CreateGroupOptions, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<GroupDto> {
        let deferred = Promise<GroupDto>.pending()
        createGroupWithRequestBuilder(createGroupOptions: createGroupOptions).execute(apiResponseQueue) { result -> Void in
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
     Create a group
     - POST /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createGroupOptions: (body) createGroupOptions 
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
     
     - parameter groupId: (path) groupId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteGroup( groupId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteGroupWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
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
     Delete group
     - DELETE /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageGroupProjection>
     */
    open class func getAllGroups( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllGroups? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageGroupProjection> {
        let deferred = Promise<PageGroupProjection>.pending()
        getAllGroupsWithRequestBuilder(page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     Get all Contact Groups in paginated format
     - GET /groups/paginated
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageGroupProjection> 
     */
    open class func getAllGroupsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllGroups? = nil) -> RequestBuilder<PageGroupProjection> {
        let path = "/groups/paginated"
        let URLString = mailslurpAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": page?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "sort": sort?.encodeToJSON(),
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
     
     - parameter groupId: (path) groupId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<GroupDto>
     */
    open class func getGroup( groupId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<GroupDto> {
        let deferred = Promise<GroupDto>.pending()
        getGroupWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
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
     Get group
     - GET /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
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
     
     - parameter groupId: (path) groupId 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<GroupContactsDto>
     */
    open class func getGroupWithContacts( groupId: UUID, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<GroupContactsDto> {
        let deferred = Promise<GroupContactsDto>.pending()
        getGroupWithContactsWithRequestBuilder(groupId: groupId).execute(apiResponseQueue) { result -> Void in
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
     Get group and contacts belonging to it
     - GET /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
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
     Get group and paginated contacts belonging to it
     
     - parameter groupId: (path) groupId 
     - parameter page: (query) Optional page index in group contact pagination (optional, default to 0)
     - parameter size: (query) Optional page size in group contact pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<PageContactProjection>
     */
    open class func getGroupWithContactsPaginated( groupId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getGroupWithContactsPaginated? = nil, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<PageContactProjection> {
        let deferred = Promise<PageContactProjection>.pending()
        getGroupWithContactsPaginatedWithRequestBuilder(groupId: groupId, page: page, size: size, sort: sort).execute(apiResponseQueue) { result -> Void in
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
     Get group and paginated contacts belonging to it
     - GET /groups/{groupId}/contacts-paginated
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - parameter page: (query) Optional page index in group contact pagination (optional, default to 0)
     - parameter size: (query) Optional page size in group contact pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - returns: RequestBuilder<PageContactProjection> 
     */
    open class func getGroupWithContactsPaginatedWithRequestBuilder(groupId: UUID, page: Int? = nil, size: Int? = nil, sort: Sort_getGroupWithContactsPaginated? = nil) -> RequestBuilder<PageContactProjection> {
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
     - returns: Promise<[GroupProjection]>
     */
    open class func getGroups(apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<[GroupProjection]> {
        let deferred = Promise<[GroupProjection]>.pending()
        getGroupsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<GroupContactsDto>
     */
    open class func removeContactsFromGroup( groupId: UUID,  updateGroupContactsOption: UpdateGroupContacts, apiResponseQueue: DispatchQueue = mailslurpAPI.apiResponseQueue) -> Promise<GroupContactsDto> {
        let deferred = Promise<GroupContactsDto>.pending()
        removeContactsFromGroupWithRequestBuilder(groupId: groupId, updateGroupContactsOption: updateGroupContactsOption).execute(apiResponseQueue) { result -> Void in
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
     Remove contacts from a group
     - DELETE /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path) groupId 
     - parameter updateGroupContactsOption: (body) updateGroupContactsOption 
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func removeContactsFromGroupWithRequestBuilder(groupId: UUID, updateGroupContactsOption: UpdateGroupContacts) -> RequestBuilder<GroupContactsDto> {
        var path = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let URLString = mailslurpAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContactsOption)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
