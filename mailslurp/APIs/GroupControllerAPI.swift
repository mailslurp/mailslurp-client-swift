//
// GroupControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class GroupControllerAPI : NSObject {

    /**
     Add contacts to a group
     
     - parameter groupId: (path)  
     - parameter updateGroupContacts: (body)  
     - returns: Promise<GroupContactsDto>
     */
    open class func addContactsToGroup( groupId: UUID,  updateGroupContacts: UpdateGroupContacts) -> Promise<GroupContactsDto> {
        let deferred = Promise<GroupContactsDto>.pending()
        addContactsToGroupWithRequestBuilder(groupId: groupId, updateGroupContacts: updateGroupContacts).execute { result in
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
        var localVariablePath = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContacts)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create a group
     
     - parameter createGroupOptions: (body)  
     - returns: Promise<GroupDto>
     */
    open class func createGroup( createGroupOptions: CreateGroupOptions) -> Promise<GroupDto> {
        let deferred = Promise<GroupDto>.pending()
        createGroupWithRequestBuilder(createGroupOptions: createGroupOptions).execute { result in
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
     Create a group
     - POST /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createGroupOptions: (body)  
     - returns: RequestBuilder<GroupDto> 
     */
    open class func createGroupWithRequestBuilder(createGroupOptions: CreateGroupOptions) -> RequestBuilder<GroupDto> {
        let localVariablePath = "/groups"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createGroupOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete group
     
     - parameter groupId: (path)  
     - returns: Promise<Void>
     */
    open class func deleteGroup( groupId: UUID) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteGroupWithRequestBuilder(groupId: groupId).execute { result in
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
     - parameter groupId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteGroupWithRequestBuilder(groupId: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/groups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
     - returns: Promise<PageGroupProjection>
     */
    open class func getAllGroups( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllGroups? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageGroupProjection> {
        let deferred = Promise<PageGroupProjection>.pending()
        getAllGroupsWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before).execute { result in
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
        let localVariablePath = "/groups/paginated"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageGroupProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get group
     
     - parameter groupId: (path)  
     - returns: Promise<GroupDto>
     */
    open class func getGroup( groupId: UUID) -> Promise<GroupDto> {
        let deferred = Promise<GroupDto>.pending()
        getGroupWithRequestBuilder(groupId: groupId).execute { result in
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
     Get group
     - GET /groups/{groupId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - returns: RequestBuilder<GroupDto> 
     */
    open class func getGroupWithRequestBuilder(groupId: UUID) -> RequestBuilder<GroupDto> {
        var localVariablePath = "/groups/{groupId}"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get group and contacts belonging to it
     
     - parameter groupId: (path)  
     - returns: Promise<GroupContactsDto>
     */
    open class func getGroupWithContacts( groupId: UUID) -> Promise<GroupContactsDto> {
        let deferred = Promise<GroupContactsDto>.pending()
        getGroupWithContactsWithRequestBuilder(groupId: groupId).execute { result in
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
     Get group and contacts belonging to it
     - GET /groups/{groupId}/contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter groupId: (path)  
     - returns: RequestBuilder<GroupContactsDto> 
     */
    open class func getGroupWithContactsWithRequestBuilder(groupId: UUID) -> RequestBuilder<GroupContactsDto> {
        var localVariablePath = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
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
     - returns: Promise<PageContactProjection>
     */
    open class func getGroupWithContactsPaginated( groupId: UUID,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getGroupWithContactsPaginated? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageContactProjection> {
        let deferred = Promise<PageContactProjection>.pending()
        getGroupWithContactsPaginatedWithRequestBuilder(groupId: groupId, page: page, size: size, sort: sort, since: since, before: before).execute { result in
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
        var localVariablePath = "/groups/{groupId}/contacts-paginated"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageContactProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get all groups
     
     - returns: Promise<[GroupProjection]>
     */
    open class func getGroups() -> Promise<[GroupProjection]> {
        let deferred = Promise<[GroupProjection]>.pending()
        getGroupsWithRequestBuilder().execute { result in
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
     Get all groups
     - GET /groups
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[GroupProjection]> 
     */
    open class func getGroupsWithRequestBuilder() -> RequestBuilder<[GroupProjection]> {
        let localVariablePath = "/groups"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[GroupProjection]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Remove contacts from a group
     
     - parameter groupId: (path)  
     - parameter updateGroupContacts: (body)  
     - returns: Promise<GroupContactsDto>
     */
    open class func removeContactsFromGroup( groupId: UUID,  updateGroupContacts: UpdateGroupContacts) -> Promise<GroupContactsDto> {
        let deferred = Promise<GroupContactsDto>.pending()
        removeContactsFromGroupWithRequestBuilder(groupId: groupId, updateGroupContacts: updateGroupContacts).execute { result in
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
        var localVariablePath = "/groups/{groupId}/contacts"
        let groupIdPreEscape = "\(APIHelper.mapValueToPathItem(groupId))"
        let groupIdPostEscape = groupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{groupId}", with: groupIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateGroupContacts)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupContactsDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
