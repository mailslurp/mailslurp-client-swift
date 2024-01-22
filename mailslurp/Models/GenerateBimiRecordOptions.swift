//
// GenerateBimiRecordOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class GenerateBimiRecordOptions: NSObject, Codable, JSONEncodable {

    public enum Version: String, Codable, CaseIterable {
        case bimi1 = "BIMI1"
    }
    public var domain: String
    public var version: Version
    public var logoUrl: String
    public var vmcUrl: String?

    public init(domain: String, version: Version, logoUrl: String, vmcUrl: String? = nil) {
        self.domain = domain
        self.version = version
        self.logoUrl = logoUrl
        self.vmcUrl = vmcUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domain
        case version
        case logoUrl
        case vmcUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domain, forKey: .domain)
        try container.encode(version, forKey: .version)
        try container.encode(logoUrl, forKey: .logoUrl)
        try container.encodeIfPresent(vmcUrl, forKey: .vmcUrl)
    }
}
