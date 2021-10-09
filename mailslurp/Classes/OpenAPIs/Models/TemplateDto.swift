//
// TemplateDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class TemplateDto: NSObject, Codable {

    public var content: String
    public var createdAt: Date
    public var _id: UUID
    public var name: String
    public var variables: [TemplateVariable]

    public init(content: String, createdAt: Date, _id: UUID, name: String, variables: [TemplateVariable]) {
        self.content = content
        self.createdAt = createdAt
        self._id = _id
        self.name = name
        self.variables = variables
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case createdAt
        case _id = "id"
        case name
        case variables
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(content, forKey: .content)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(_id, forKey: ._id)
        try container.encode(name, forKey: .name)
        try container.encode(variables, forKey: .variables)
    }



}
