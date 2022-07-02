//
// SmsMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

@objc public class SmsMessage: NSObject, Codable {

    public var _id: UUID?
    public var userId: UUID
    public var phoneNumber: UUID
    public var fromNumber: String
    public var body: String
    public var read: Bool
    public var sid: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(_id: UUID? = nil, userId: UUID, phoneNumber: UUID, fromNumber: String, body: String, read: Bool, sid: String, createdAt: Date, updatedAt: Date) {
        self._id = _id
        self.userId = userId
        self.phoneNumber = phoneNumber
        self.fromNumber = fromNumber
        self.body = body
        self.read = read
        self.sid = sid
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case phoneNumber
        case fromNumber
        case body
        case read
        case sid
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(fromNumber, forKey: .fromNumber)
        try container.encode(body, forKey: .body)
        try container.encode(read, forKey: .read)
        try container.encode(sid, forKey: .sid)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }



}
