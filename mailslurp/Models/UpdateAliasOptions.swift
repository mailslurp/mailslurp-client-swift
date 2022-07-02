//
// UpdateAliasOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Update an email alias */
@objc public class UpdateAliasOptions: NSObject, Codable {

    /** Optional name for alias */
    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
    }



}
