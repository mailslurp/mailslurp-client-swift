//
// BounceRecipient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class BounceRecipient: NSObject, Codable {

    public var _id: UUID
    public var userId: UUID?
    public var recipient: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(_id: UUID, userId: UUID? = nil, recipient: String, createdAt: Date, updatedAt: Date) {
        self._id = _id
        self.userId = userId
        self.recipient = recipient
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case recipient
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encode(recipient, forKey: .recipient)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }



}
