//
// ExpiredInboxRecordProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class ExpiredInboxRecordProjection: NSObject, Codable {

    public var _id: UUID
    public var createdAt: Date
    public var userId: UUID
    public var emailAddress: String

    public init(_id: UUID, createdAt: Date, userId: UUID, emailAddress: String) {
        self._id = _id
        self.createdAt = createdAt
        self.userId = userId
        self.emailAddress = emailAddress
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case createdAt
        case userId
        case emailAddress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(userId, forKey: .userId)
        try container.encode(emailAddress, forKey: .emailAddress)
    }



}
