//
// CreateConnectorImapConnectionOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options for IMAP connection to external email inbox. Allows syncing emails iva IMAP. */
@objc public class CreateConnectorImapConnectionOptions: NSObject, Codable, JSONEncodable {

    public var imapSsl: Bool?
    public var imapSslNum: NSNumber? {
        get {
            return imapSsl as NSNumber?
        }
    }
    public var imapUsername: String?
    public var imapPassword: String?
    /** Optional folder to select during IMAP connection */
    public var selectFolder: String?
    public var searchTerms: String?
    /** IMAP server port */
    public var imapPort: Int?
    public var imapPortNum: NSNumber? {
        get {
            return imapPort as NSNumber?
        }
    }
    /** IMAP server host */
    public var imapHost: String
    /** IMAP server enabled */
    public var enabled: Bool?
    public var enabledNum: NSNumber? {
        get {
            return enabled as NSNumber?
        }
    }

    public init(imapSsl: Bool? = nil, imapUsername: String? = nil, imapPassword: String? = nil, selectFolder: String? = nil, searchTerms: String? = nil, imapPort: Int? = nil, imapHost: String, enabled: Bool? = nil) {
        self.imapSsl = imapSsl
        self.imapUsername = imapUsername
        self.imapPassword = imapPassword
        self.selectFolder = selectFolder
        self.searchTerms = searchTerms
        self.imapPort = imapPort
        self.imapHost = imapHost
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case imapSsl
        case imapUsername
        case imapPassword
        case selectFolder
        case searchTerms
        case imapPort
        case imapHost
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(imapSsl, forKey: .imapSsl)
        try container.encodeIfPresent(imapUsername, forKey: .imapUsername)
        try container.encodeIfPresent(imapPassword, forKey: .imapPassword)
        try container.encodeIfPresent(selectFolder, forKey: .selectFolder)
        try container.encodeIfPresent(searchTerms, forKey: .searchTerms)
        try container.encodeIfPresent(imapPort, forKey: .imapPort)
        try container.encode(imapHost, forKey: .imapHost)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }
}

