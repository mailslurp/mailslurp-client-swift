//
// GroupProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Data for contact group */
@objcMembers public class GroupProjection: NSObject, Codable, ParameterConvertible {

    public var createdAt: Date
    public var name: String
    public var _id: UUID
    public var _description: String?

    public init(createdAt: Date, name: String, _id: UUID, _description: String? = nil) {
        self.createdAt = createdAt
        self.name = name
        self._id = _id
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case name
        case _id = "id"
        case _description = "description"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(name, forKey: .name)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(_description, forKey: ._description)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension GroupProjection: Identifiable {}
