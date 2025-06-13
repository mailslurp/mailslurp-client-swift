//
// DescribeMailServerDomainResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Name Server lookup result */
@objcMembers public class DescribeMailServerDomainResult: NSObject, Codable, ParameterConvertible {

    public var mxRecords: [NameServerRecord]
    public var domain: String
    public var message: String?

    public init(mxRecords: [NameServerRecord], domain: String, message: String? = nil) {
        self.mxRecords = mxRecords
        self.domain = domain
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mxRecords
        case domain
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mxRecords, forKey: .mxRecords)
        try container.encode(domain, forKey: .domain)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

