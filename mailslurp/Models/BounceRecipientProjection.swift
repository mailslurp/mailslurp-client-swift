//
// BounceRecipientProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Bounced recipient */
@objc public class BounceRecipientProjection: NSObject, Codable, JSONEncodable {

    public var createdAt: Date
    public var sentEmailId: UUID?
    public var recipient: String
    public var bounceType: String?
    public var action: String?
    public var _id: UUID?
    public var status: String?

    public init(createdAt: Date, sentEmailId: UUID? = nil, recipient: String, bounceType: String? = nil, action: String? = nil, _id: UUID? = nil, status: String? = nil) {
        self.createdAt = createdAt
        self.sentEmailId = sentEmailId
        self.recipient = recipient
        self.bounceType = bounceType
        self.action = action
        self._id = _id
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case sentEmailId
        case recipient
        case bounceType
        case action
        case _id = "id"
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(sentEmailId, forKey: .sentEmailId)
        try container.encode(recipient, forKey: .recipient)
        try container.encodeIfPresent(bounceType, forKey: .bounceType)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(status, forKey: .status)
    }
}

