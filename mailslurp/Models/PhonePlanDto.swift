//
// PhonePlanDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PhonePlanDto: NSObject, Codable, JSONEncodable {

    public enum PhoneCountry: String, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
        case au = "AU"
    }
    public var _id: UUID
    public var userId: UUID
    public var phoneCountry: PhoneCountry
    public var createdAt: Date

    public init(_id: UUID, userId: UUID, phoneCountry: PhoneCountry, createdAt: Date) {
        self._id = _id
        self.userId = userId
        self.phoneCountry = phoneCountry
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case phoneCountry
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneCountry, forKey: .phoneCountry)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

