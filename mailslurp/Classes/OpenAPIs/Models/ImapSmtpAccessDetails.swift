//
// ImapSmtpAccessDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class ImapSmtpAccessDetails: NSObject, Codable {

    public var smtpServerHost: String
    public var smtpServerPort: Int
    public var smtpUsername: String
    public var smtpPassword: String
    public var imapServerHost: String
    public var imapServerPort: Int
    public var imapUsername: String
    public var imapPassword: String

    public init(smtpServerHost: String, smtpServerPort: Int, smtpUsername: String, smtpPassword: String, imapServerHost: String, imapServerPort: Int, imapUsername: String, imapPassword: String) {
        self.smtpServerHost = smtpServerHost
        self.smtpServerPort = smtpServerPort
        self.smtpUsername = smtpUsername
        self.smtpPassword = smtpPassword
        self.imapServerHost = imapServerHost
        self.imapServerPort = imapServerPort
        self.imapUsername = imapUsername
        self.imapPassword = imapPassword
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case smtpServerHost
        case smtpServerPort
        case smtpUsername
        case smtpPassword
        case imapServerHost
        case imapServerPort
        case imapUsername
        case imapPassword
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(smtpServerHost, forKey: .smtpServerHost)
        try container.encode(smtpServerPort, forKey: .smtpServerPort)
        try container.encode(smtpUsername, forKey: .smtpUsername)
        try container.encode(smtpPassword, forKey: .smtpPassword)
        try container.encode(imapServerHost, forKey: .imapServerHost)
        try container.encode(imapServerPort, forKey: .imapServerPort)
        try container.encode(imapUsername, forKey: .imapUsername)
        try container.encode(imapPassword, forKey: .imapPassword)
    }



}
