//
// ExpiredInboxRecordProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Record of inbox expiration */
@objc public class ExpiredInboxRecordProjection: NSObject, Codable, JSONEncodable {

    public var createdAt: Date
    public var emailAddress: String
    public var userId: UUID
    public var _id: UUID

    public init(createdAt: Date, emailAddress: String, userId: UUID, _id: UUID) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self.userId = userId
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case emailAddress
        case userId
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(userId, forKey: .userId)
        try container.encode(_id, forKey: ._id)
    }
}

