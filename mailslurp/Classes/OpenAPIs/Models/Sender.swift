//
// Sender.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class Sender: NSObject, Codable {

    public var emailAddress: String
    public var name: String?
    public var rawValue: String

    public init(emailAddress: String, name: String? = nil, rawValue: String) {
        self.emailAddress = emailAddress
        self.name = name
        self.rawValue = rawValue
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress
        case name
        case rawValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(rawValue, forKey: .rawValue)
    }



}