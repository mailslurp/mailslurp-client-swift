//
// CreateGroupOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc public class CreateGroupOptions: NSObject, Codable {

    public var name: String
    public var _description: String?

    public init(name: String, _description: String? = nil) {
        self.name = name
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _description = "description"
    }

}
