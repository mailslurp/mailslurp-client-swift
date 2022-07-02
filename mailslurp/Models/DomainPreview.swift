//
// DomainPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Preview object for domain entity */
@objc public class DomainPreview: NSObject, Codable {

    public enum DomainType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpDomain = "SMTP_DOMAIN"
    }
    public var _id: UUID
    public var domain: String
    public var catchAllInboxId: UUID?
    public var createdAt: Date
    /** Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. */
    public var domainType: DomainType
    public var isVerified: Bool

    public init(_id: UUID, domain: String, catchAllInboxId: UUID? = nil, createdAt: Date, domainType: DomainType, isVerified: Bool) {
        self._id = _id
        self.domain = domain
        self.catchAllInboxId = catchAllInboxId
        self.createdAt = createdAt
        self.domainType = domainType
        self.isVerified = isVerified
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case domain
        case catchAllInboxId
        case createdAt
        case domainType
        case isVerified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(domain, forKey: .domain)
        try container.encodeIfPresent(catchAllInboxId, forKey: .catchAllInboxId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(domainType, forKey: .domainType)
        try container.encode(isVerified, forKey: .isVerified)
    }



}
