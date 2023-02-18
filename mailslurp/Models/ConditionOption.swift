//
// ConditionOption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for matching emails in an inbox based on a condition such as `HAS_ATTACHMENTS&#x3D;TRUE` */
@objc public class ConditionOption: NSObject, Codable, JSONEncodable {

    public enum Condition: String, Codable, CaseIterable {
        case hasAttachments = "HAS_ATTACHMENTS"
    }
    public enum Value: String, Codable, CaseIterable {
        case _true = "TRUE"
        case _false = "FALSE"
    }
    /** Condition of an email object that can be used to filter results */
    public var condition: Condition
    /** Expected condition value */
    public var value: Value

    public init(condition: Condition, value: Value) {
        self.condition = condition
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case condition
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(condition, forKey: .condition)
        try container.encode(value, forKey: .value)
    }
}

