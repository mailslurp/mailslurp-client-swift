//
// UnknownMissedEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Unknown missed email projection */
@objc public class UnknownMissedEmailProjection: NSObject, Codable, JSONEncodable {

    public var createdAt: Date
    public var to: [String]?
    public var subject: String?
    public var _id: UUID
    public var from: String?

    public init(createdAt: Date, to: [String]? = nil, subject: String? = nil, _id: UUID, from: String? = nil) {
        self.createdAt = createdAt
        self.to = to
        self.subject = subject
        self._id = _id
        self.from = from
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case to
        case subject
        case _id = "id"
        case from
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
    }
}

