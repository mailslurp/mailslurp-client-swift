//
// CreateTemplateOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Create template options */
@objcMembers public class CreateTemplateOptions: NSObject, Codable, ParameterConvertible {

    /** Name of template */
    public var name: String
    /** Template content. Can include moustache style variables such as {{var_name}} */
    public var content: String

    public init(name: String, content: String) {
        self.name = name
        self.content = content
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case content
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(content, forKey: .content)
    }
}

