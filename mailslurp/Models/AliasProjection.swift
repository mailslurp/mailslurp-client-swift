//
// AliasProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Representation of a alias */
@objc public class AliasProjection: NSObject, Codable, JSONEncodable {

    public var createdAt: Date
    public var updatedAt: Date
    public var inboxId: UUID
    public var emailAddress: String
    public var userId: UUID
    public var useThreads: Bool?
    public var useThreadsNum: NSNumber? {
        get {
            return useThreads as NSNumber?
        }
    }
    public var name: String?
    public var _id: UUID

    public init(createdAt: Date, updatedAt: Date, inboxId: UUID, emailAddress: String, userId: UUID, useThreads: Bool? = nil, name: String? = nil, _id: UUID) {
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.inboxId = inboxId
        self.emailAddress = emailAddress
        self.userId = userId
        self.useThreads = useThreads
        self.name = name
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case updatedAt
        case inboxId
        case emailAddress
        case userId
        case useThreads
        case name
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(useThreads, forKey: .useThreads)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(_id, forKey: ._id)
    }
}

