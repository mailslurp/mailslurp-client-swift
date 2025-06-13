//
// Recipient.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Email recipient */
@objcMembers public class Recipient: NSObject, Codable, ParameterConvertible {

    public var rawValue: String
    public var emailAddress: String
    public var name: String?

    public init(rawValue: String, emailAddress: String, name: String? = nil) {
        self.rawValue = rawValue
        self.emailAddress = emailAddress
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rawValue
        case emailAddress
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rawValue, forKey: .rawValue)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(name, forKey: .name)
    }
}

