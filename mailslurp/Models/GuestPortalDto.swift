//
// GuestPortalDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class GuestPortalDto: NSObject, Codable, ParameterConvertible {

    public var _id: UUID
    public var domainId: UUID?
    public var userId: UUID
    public var name: String?
    public var _description: String?
    public var linkHelp: String?
    public var createdAt: Date
    public var updatedAt: Date
    public var loginUrl: String

    public init(_id: UUID, domainId: UUID? = nil, userId: UUID, name: String? = nil, _description: String? = nil, linkHelp: String? = nil, createdAt: Date, updatedAt: Date, loginUrl: String) {
        self._id = _id
        self.domainId = domainId
        self.userId = userId
        self.name = name
        self._description = _description
        self.linkHelp = linkHelp
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.loginUrl = loginUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case domainId
        case userId
        case name
        case _description = "description"
        case linkHelp
        case createdAt
        case updatedAt
        case loginUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(domainId, forKey: .domainId)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(linkHelp, forKey: .linkHelp)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(loginUrl, forKey: .loginUrl)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension GuestPortalDto: Identifiable {}
