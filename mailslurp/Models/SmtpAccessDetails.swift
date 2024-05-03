//
// SmtpAccessDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Access details for inbox using SMTP */
@objc public class SmtpAccessDetails: NSObject, Codable, JSONEncodable {

    /** Secure TLS SMTP server host domain */
    public var secureSmtpServerHost: String
    /** Secure TLS SMTP server host port */
    public var secureSmtpServerPort: Int
    /** Secure TLS SMTP username for login */
    public var secureSmtpUsername: String
    /** Secure TLS SMTP password for login */
    public var secureSmtpPassword: String
    /** SMTP server host domain */
    public var smtpServerHost: String
    /** SMTP server host port */
    public var smtpServerPort: Int
    /** SMTP username for login */
    public var smtpUsername: String
    /** SMTP password for login */
    public var smtpPassword: String
    /** Mail from domain or SMTP HELO value */
    public var mailFromDomain: String?

    public init(secureSmtpServerHost: String, secureSmtpServerPort: Int, secureSmtpUsername: String, secureSmtpPassword: String, smtpServerHost: String, smtpServerPort: Int, smtpUsername: String, smtpPassword: String, mailFromDomain: String? = nil) {
        self.secureSmtpServerHost = secureSmtpServerHost
        self.secureSmtpServerPort = secureSmtpServerPort
        self.secureSmtpUsername = secureSmtpUsername
        self.secureSmtpPassword = secureSmtpPassword
        self.smtpServerHost = smtpServerHost
        self.smtpServerPort = smtpServerPort
        self.smtpUsername = smtpUsername
        self.smtpPassword = smtpPassword
        self.mailFromDomain = mailFromDomain
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case secureSmtpServerHost
        case secureSmtpServerPort
        case secureSmtpUsername
        case secureSmtpPassword
        case smtpServerHost
        case smtpServerPort
        case smtpUsername
        case smtpPassword
        case mailFromDomain
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(secureSmtpServerHost, forKey: .secureSmtpServerHost)
        try container.encode(secureSmtpServerPort, forKey: .secureSmtpServerPort)
        try container.encode(secureSmtpUsername, forKey: .secureSmtpUsername)
        try container.encode(secureSmtpPassword, forKey: .secureSmtpPassword)
        try container.encode(smtpServerHost, forKey: .smtpServerHost)
        try container.encode(smtpServerPort, forKey: .smtpServerPort)
        try container.encode(smtpUsername, forKey: .smtpUsername)
        try container.encode(smtpPassword, forKey: .smtpPassword)
        try container.encodeIfPresent(mailFromDomain, forKey: .mailFromDomain)
    }
}
