//
// UnknownMissedEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Unknown missed email projection */
public struct UnknownMissedEmailProjection: Codable, Hashable {

    public var id: UUID
    public var from: String?
    public var subject: String?
    public var to: [String]?
    public var createdAt: Date

    public init(id: UUID, from: String? = nil, subject: String? = nil, to: [String]? = nil, createdAt: Date) {
        self.id = id
        self.from = from
        self.subject = subject
        self.to = to
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case from
        case subject
        case to
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encode(createdAt, forKey: .createdAt)
    }



}
