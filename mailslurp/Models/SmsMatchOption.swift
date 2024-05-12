//
// SmsMatchOption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for matching SMS messages in a phone number. Each match option object contains a `field`, `should` and `value` property. Together they form logical conditions such as `BODY` should `CONTAIN` value. */
@objc public class SmsMatchOption: NSObject, Codable, JSONEncodable {

    public enum Field: String, Codable, CaseIterable {
        case body = "BODY"
        case from = "FROM"
    }
    public enum Should: String, Codable, CaseIterable {
        case match = "MATCH"
        case contain = "CONTAIN"
        case equal = "EQUAL"
    }
    /** Fields of an SMS object that can be used to filter results */
    public var field: Field
    /** How the value of the email field specified should be compared to the value given in the match options. */
    public var should: Should
    /** The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed. */
    public var value: String

    public init(field: Field, should: Should, value: String) {
        self.field = field
        self.should = should
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case should
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(field, forKey: .field)
        try container.encode(should, forKey: .should)
        try container.encode(value, forKey: .value)
    }
}

