//
// TemplateProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class TemplateProjection: NSObject, Codable {

    public var name: String?
    public var _id: UUID?
    public var updatedAt: Date?
    public var createdAt: Date?
    public var variables: Set<String>?

    public init(name: String? = nil, _id: UUID? = nil, updatedAt: Date? = nil, createdAt: Date? = nil, variables: Set<String>? = nil) {
        self.name = name
        self._id = _id
        self.updatedAt = updatedAt
        self.createdAt = createdAt
        self.variables = variables
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _id = "id"
        case updatedAt
        case createdAt
        case variables
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(variables, forKey: .variables)
    }



}
