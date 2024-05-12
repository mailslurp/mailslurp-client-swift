//
// DomainGroup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class DomainGroup: NSObject, Codable, JSONEncodable {

    public enum Label: String, Codable, CaseIterable {
        case _default = "DEFAULT"
        case domainPool = "DOMAIN_POOL"
        case custom = "CUSTOM"
    }
    public var label: Label
    public var domains: [DomainInformation]

    public init(label: Label, domains: [DomainInformation]) {
        self.label = label
        self.domains = domains
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case label
        case domains
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(label, forKey: .label)
        try container.encode(domains, forKey: .domains)
    }
}

