//
// BounceRecipientProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Bounced recipient */
public struct BounceRecipientProjection: Codable, Hashable {

    public var id: UUID?
    public var action: String?
    public var status: String?
    public var sentEmailId: UUID?
    public var createdAt: Date
    public var recipient: String

    public init(id: UUID? = nil, action: String? = nil, status: String? = nil, sentEmailId: UUID? = nil, createdAt: Date, recipient: String) {
        self.id = id
        self.action = action
        self.status = status
        self.sentEmailId = sentEmailId
        self.createdAt = createdAt
        self.recipient = recipient
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case action
        case status
        case sentEmailId
        case createdAt
        case recipient
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(sentEmailId, forKey: .sentEmailId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(recipient, forKey: .recipient)
    }



}
