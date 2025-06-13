//
// TotpDeviceCodeDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class TotpDeviceCodeDto: NSObject, Codable, ParameterConvertible {

    public var code: String
    public var expiresAt: Date?

    public init(code: String, expiresAt: Date? = nil) {
        self.code = code
        self.expiresAt = expiresAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case expiresAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(code, forKey: .code)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
    }
}

