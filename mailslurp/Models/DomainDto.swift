//
// DomainDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Domain plus verification records and status */
@objc public class DomainDto: NSObject, Codable, JSONEncodable {

    public enum DomainType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpDomain = "SMTP_DOMAIN"
    }
    public var _id: UUID
    public var userId: UUID
    /** Custom domain name */
    public var domain: String
    /** Verification tokens */
    public var verificationToken: String
    /** Unique token DKIM tokens */
    public var dkimTokens: [String]
    /** Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. */
    public var isVerified: Bool
    /** List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. */
    public var domainNameRecords: [DomainNameRecord]
    /** The optional catch all inbox that will receive emails sent to the domain that cannot be matched. */
    public var catchAllInboxId: UUID?
    public var createdAt: Date
    public var updatedAt: Date
    /** Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. */
    public var domainType: DomainType

    public init(_id: UUID, userId: UUID, domain: String, verificationToken: String, dkimTokens: [String], isVerified: Bool, domainNameRecords: [DomainNameRecord], catchAllInboxId: UUID? = nil, createdAt: Date, updatedAt: Date, domainType: DomainType) {
        self._id = _id
        self.userId = userId
        self.domain = domain
        self.verificationToken = verificationToken
        self.dkimTokens = dkimTokens
        self.isVerified = isVerified
        self.domainNameRecords = domainNameRecords
        self.catchAllInboxId = catchAllInboxId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.domainType = domainType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case domain
        case verificationToken
        case dkimTokens
        case isVerified
        case domainNameRecords
        case catchAllInboxId
        case createdAt
        case updatedAt
        case domainType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(domain, forKey: .domain)
        try container.encode(verificationToken, forKey: .verificationToken)
        try container.encode(dkimTokens, forKey: .dkimTokens)
        try container.encode(isVerified, forKey: .isVerified)
        try container.encode(domainNameRecords, forKey: .domainNameRecords)
        try container.encodeIfPresent(catchAllInboxId, forKey: .catchAllInboxId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(domainType, forKey: .domainType)
    }
}

