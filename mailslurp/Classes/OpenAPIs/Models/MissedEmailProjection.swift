//
// MissedEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class MissedEmailProjection: NSObject, Codable {

    public var createdAt: Date
    public var from: String?
    public var _id: UUID
    public var subject: String?
    public var userId: UUID

    public init(createdAt: Date, from: String? = nil, _id: UUID, subject: String? = nil, userId: UUID) {
        self.createdAt = createdAt
        self.from = from
        self._id = _id
        self.subject = subject
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case from
        case _id = "id"
        case subject
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(userId, forKey: .userId)
    }



}
