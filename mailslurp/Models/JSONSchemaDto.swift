//
// JSONSchemaDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** JSONSchema for payload */
@objc public class JSONSchemaDto: NSObject, Codable {

    public var value: String

    public init(value: String) {
        self.value = value
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(value, forKey: .value)
    }



}
