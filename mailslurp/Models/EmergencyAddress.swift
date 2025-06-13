//
// EmergencyAddress.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class EmergencyAddress: NSObject, Codable, ParameterConvertible {

    public enum PhoneCountry: String, Sendable, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
        case au = "AU"
        case ca = "CA"
        case ee = "EE"
        case hk = "HK"
        case pl = "PL"
        case ch = "CH"
        case pt = "PT"
        case nl = "NL"
        case il = "IL"
        case se = "SE"
    }
    public var _id: UUID
    public var sid: String
    public var userId: UUID
    public var displayName: String
    public var customerName: String
    public var address1: String
    public var city: String
    public var region: String
    public var postalCode: String
    public var phoneCountry: PhoneCountry
    public var accountSid: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(_id: UUID, sid: String, userId: UUID, displayName: String, customerName: String, address1: String, city: String, region: String, postalCode: String, phoneCountry: PhoneCountry, accountSid: String, createdAt: Date, updatedAt: Date) {
        self._id = _id
        self.sid = sid
        self.userId = userId
        self.displayName = displayName
        self.customerName = customerName
        self.address1 = address1
        self.city = city
        self.region = region
        self.postalCode = postalCode
        self.phoneCountry = phoneCountry
        self.accountSid = accountSid
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case sid
        case userId
        case displayName
        case customerName
        case address1
        case city
        case region
        case postalCode
        case phoneCountry
        case accountSid
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(sid, forKey: .sid)
        try container.encode(userId, forKey: .userId)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(customerName, forKey: .customerName)
        try container.encode(address1, forKey: .address1)
        try container.encode(city, forKey: .city)
        try container.encode(region, forKey: .region)
        try container.encode(postalCode, forKey: .postalCode)
        try container.encode(phoneCountry, forKey: .phoneCountry)
        try container.encode(accountSid, forKey: .accountSid)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension EmergencyAddress: Identifiable {}
