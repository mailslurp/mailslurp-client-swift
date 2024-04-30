//
// SmsProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** SMS projection */
@objc public class SmsProjection: NSObject, Codable, JSONEncodable {

    public var body: String
    public var createdAt: Date
    public var userId: UUID
    public var phoneNumber: UUID
    public var fromNumber: String
    public var read: Bool
    public var _id: UUID

    public init(body: String, createdAt: Date, userId: UUID, phoneNumber: UUID, fromNumber: String, read: Bool, _id: UUID) {
        self.body = body
        self.createdAt = createdAt
        self.userId = userId
        self.phoneNumber = phoneNumber
        self.fromNumber = fromNumber
        self.read = read
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case createdAt
        case userId
        case phoneNumber
        case fromNumber
        case read
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(fromNumber, forKey: .fromNumber)
        try container.encode(read, forKey: .read)
        try container.encode(_id, forKey: ._id)
    }
}

