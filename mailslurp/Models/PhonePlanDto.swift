//
// PhonePlanDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PhonePlanDto: Codable, Hashable {

    public enum PhoneCountry: String, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
    }
    public var id: UUID
    public var userId: UUID
    public var phoneCountry: PhoneCountry
    public var createdAt: Date

    public init(id: UUID, userId: UUID, phoneCountry: PhoneCountry, createdAt: Date) {
        self.id = id
        self.userId = userId
        self.phoneCountry = phoneCountry
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userId
        case phoneCountry
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneCountry, forKey: .phoneCountry)
        try container.encode(createdAt, forKey: .createdAt)
    }



}
