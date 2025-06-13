//
// CreateConnectorSmtpConnectionOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class CreateConnectorSmtpConnectionOptions: NSObject, Codable, ParameterConvertible {

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
    public var smtpMechanisms: [String]?
    public var startTls: Bool?
    public var startTlsNum: NSNumber? {
        get {
            return startTls as NSNumber?
        }
    }
    public var localHostName: String?
    public var proxyHost: String?
    public var proxyPort: Int?
    public var proxyPortNum: NSNumber? {
        get {
            return proxyPort as NSNumber?
        }
    }
    public var proxyEnabled: Bool?
    public var proxyEnabledNum: NSNumber? {
        get {
            return proxyEnabled as NSNumber?
        }
    }
    public var sslTrust: String?
    public var sslProtocols: [String]?

    public init(enabled: Bool? = nil, smtpHost: String, smtpPort: Int? = nil, smtpSsl: Bool? = nil, smtpUsername: String? = nil, smtpPassword: String? = nil, smtpMechanisms: [String]? = nil, startTls: Bool? = nil, localHostName: String? = nil, proxyHost: String? = nil, proxyPort: Int? = nil, proxyEnabled: Bool? = nil, sslTrust: String? = nil, sslProtocols: [String]? = nil) {
        self.enabled = enabled
        self.smtpHost = smtpHost
        self.smtpPort = smtpPort
        self.smtpSsl = smtpSsl
        self.smtpUsername = smtpUsername
        self.smtpPassword = smtpPassword
        self.smtpMechanisms = smtpMechanisms
        self.startTls = startTls
        self.localHostName = localHostName
        self.proxyHost = proxyHost
        self.proxyPort = proxyPort
        self.proxyEnabled = proxyEnabled
        self.sslTrust = sslTrust
        self.sslProtocols = sslProtocols
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case smtpHost
        case smtpPort
        case smtpSsl
        case smtpUsername
        case smtpPassword
        case smtpMechanisms
        case startTls
        case localHostName
        case proxyHost
        case proxyPort
        case proxyEnabled
        case sslTrust
        case sslProtocols
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
        try container.encodeIfPresent(smtpMechanisms, forKey: .smtpMechanisms)
        try container.encodeIfPresent(startTls, forKey: .startTls)
        try container.encodeIfPresent(localHostName, forKey: .localHostName)
        try container.encodeIfPresent(proxyHost, forKey: .proxyHost)
        try container.encodeIfPresent(proxyPort, forKey: .proxyPort)
        try container.encodeIfPresent(proxyEnabled, forKey: .proxyEnabled)
        try container.encodeIfPresent(sslTrust, forKey: .sslTrust)
        try container.encodeIfPresent(sslProtocols, forKey: .sslProtocols)
    }
}

