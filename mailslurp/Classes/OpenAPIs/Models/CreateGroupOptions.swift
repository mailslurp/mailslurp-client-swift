//
// CreateGroupOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class CreateGroupOptions: NSObject, Codable {

    public var name: String?
    public var _description: String?

    public init(name: String? = nil, _description: String? = nil) {
        self.name = name
        self._description = _description
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _description = "description"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_description, forKey: ._description)
    }



}
