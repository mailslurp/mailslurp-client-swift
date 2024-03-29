//
// PhoneNumberProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Phone number projection */
@objc public class PhoneNumberProjection: NSObject, Codable, JSONEncodable {

    public enum PhoneCountry: String, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
        case au = "AU"
    }
    public var createdAt: Date
    public var userId: UUID
    public var phoneNumber: String
    public var phoneCountry: PhoneCountry
    public var _id: UUID

    public init(createdAt: Date, userId: UUID, phoneNumber: String, phoneCountry: PhoneCountry, _id: UUID) {
        self.createdAt = createdAt
        self.userId = userId
        self.phoneNumber = phoneNumber
        self.phoneCountry = phoneCountry
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case userId
        case phoneNumber
        case phoneCountry
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(phoneCountry, forKey: .phoneCountry)
        try container.encode(_id, forKey: ._id)
    }
}

