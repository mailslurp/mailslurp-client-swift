//
// AliasProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Representation of a alias */
@objc public class AliasProjection: NSObject, Codable {

    public var createdAt: Date
    public var emailAddress: String
    public var _id: UUID
    public var inboxId: UUID
    public var name: String?
    public var updatedAt: Date
    public var useThreads: Bool?
    public var useThreadsNum: NSNumber? {
        get {
            return useThreads as NSNumber?
        }
    }
    public var userId: UUID

    public init(createdAt: Date, emailAddress: String, _id: UUID, inboxId: UUID, name: String? = nil, updatedAt: Date, useThreads: Bool? = nil, userId: UUID) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self._id = _id
        self.inboxId = inboxId
        self.name = name
        self.updatedAt = updatedAt
        self.useThreads = useThreads
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case emailAddress
        case _id = "id"
        case inboxId
        case name
        case updatedAt
        case useThreads
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(_id, forKey: ._id)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(useThreads, forKey: .useThreads)
        try container.encode(userId, forKey: .userId)
    }



}
