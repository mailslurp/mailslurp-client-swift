//
// CreatePortalOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class CreatePortalOptions: NSObject, Codable, ParameterConvertible {

    public var name: String?
    public var domainId: UUID?
    public var _description: String?
    public var linkHelp: String?

    public init(name: String? = nil, domainId: UUID? = nil, _description: String? = nil, linkHelp: String? = nil) {
        self.name = name
        self.domainId = domainId
        self._description = _description
        self.linkHelp = linkHelp
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case domainId
        case _description = "description"
        case linkHelp
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(domainId, forKey: .domainId)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(linkHelp, forKey: .linkHelp)
    }
}

