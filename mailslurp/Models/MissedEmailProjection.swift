//
// MissedEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Missed email data */
@objc public class MissedEmailProjection: NSObject, Codable, JSONEncodable {

    public var subject: String?
    public var userId: UUID?
    public var createdAt: Date
    public var _id: UUID
    public var from: String?

    public init(subject: String? = nil, userId: UUID? = nil, createdAt: Date, _id: UUID, from: String? = nil) {
        self.subject = subject
        self.userId = userId
        self.createdAt = createdAt
        self._id = _id
        self.from = from
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subject
        case userId
        case createdAt
        case _id = "id"
        case from
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
    }
}

