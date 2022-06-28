//
// PhoneNumberProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Phone number projection */
@objc public class PhoneNumberProjection: NSObject, Codable {

    public enum PhoneCountry: String, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
    }
    public var _id: UUID
    public var userId: UUID
    public var phoneNumber: String
    public var phoneCountry: PhoneCountry
    public var createdAt: Date

    public init(_id: UUID, userId: UUID, phoneNumber: String, phoneCountry: PhoneCountry, createdAt: Date) {
        self._id = _id
        self.userId = userId
        self.phoneNumber = phoneNumber
        self.phoneCountry = phoneCountry
        self.createdAt = createdAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case phoneNumber
        case phoneCountry
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(phoneCountry, forKey: .phoneCountry)
        try container.encode(createdAt, forKey: .createdAt)
    }



}
