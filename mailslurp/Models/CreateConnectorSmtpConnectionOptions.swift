//
// CreateConnectorSmtpConnectionOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class CreateConnectorSmtpConnectionOptions: NSObject, Codable, JSONEncodable {

    public var enabled: Bool?
    public var enabledNum: NSNumber? {
        get {
            return enabled as NSNumber?
        }
    }
    public var smtpHost: String
    public var smtpPort: Int?
    public var smtpPortNum: NSNumber? {
        get {
            return smtpPort as NSNumber?
        }
    }
    public var smtpSsl: Bool?
    public var smtpSslNum: NSNumber? {
        get {
            return smtpSsl as NSNumber?
        }
    }
    public var smtpUsername: String?
    public var smtpPassword: String?

    public init(enabled: Bool? = nil, smtpHost: String, smtpPort: Int? = nil, smtpSsl: Bool? = nil, smtpUsername: String? = nil, smtpPassword: String? = nil) {
        self.enabled = enabled
        self.smtpHost = smtpHost
        self.smtpPort = smtpPort
        self.smtpSsl = smtpSsl
        self.smtpUsername = smtpUsername
        self.smtpPassword = smtpPassword
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case smtpHost
        case smtpPort
        case smtpSsl
        case smtpUsername
        case smtpPassword
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(smtpHost, forKey: .smtpHost)
        try container.encodeIfPresent(smtpPort, forKey: .smtpPort)
        try container.encodeIfPresent(smtpSsl, forKey: .smtpSsl)
        try container.encodeIfPresent(smtpUsername, forKey: .smtpUsername)
        try container.encodeIfPresent(smtpPassword, forKey: .smtpPassword)
    }
}

