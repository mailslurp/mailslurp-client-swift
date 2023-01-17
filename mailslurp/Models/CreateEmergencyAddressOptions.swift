//
// CreateEmergencyAddressOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class CreateEmergencyAddressOptions: NSObject, Codable, JSONEncodable {

    public enum IsoCountryCode: String, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
    }
    public var customerName: String
    public var address1: String
    public var city: String
    public var region: String
    public var postalCode: String
    public var isoCountryCode: IsoCountryCode
    public var displayName: String?

    public init(customerName: String, address1: String, city: String, region: String, postalCode: String, isoCountryCode: IsoCountryCode, displayName: String? = nil) {
        self.customerName = customerName
        self.address1 = address1
        self.city = city
        self.region = region
        self.postalCode = postalCode
        self.isoCountryCode = isoCountryCode
        self.displayName = displayName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customerName
        case address1
        case city
        case region
        case postalCode
        case isoCountryCode
        case displayName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(customerName, forKey: .customerName)
        try container.encode(address1, forKey: .address1)
        try container.encode(city, forKey: .city)
        try container.encode(region, forKey: .region)
        try container.encode(postalCode, forKey: .postalCode)
        try container.encode(isoCountryCode, forKey: .isoCountryCode)
        try container.encodeIfPresent(displayName, forKey: .displayName)
    }
}

