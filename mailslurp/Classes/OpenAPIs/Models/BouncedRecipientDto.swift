//
// BouncedRecipientDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Bounced recipient */
@objc public class BouncedRecipientDto: NSObject, Codable {

    public var _id: UUID?
    public var userId: UUID?
    public var recipient: String?
    public var createdAt: Date?

    public init(_id: UUID? = nil, userId: UUID? = nil, recipient: String? = nil, createdAt: Date? = nil) {
        self._id = _id
        self.userId = userId
        self.recipient = recipient
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case recipient
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }



}
