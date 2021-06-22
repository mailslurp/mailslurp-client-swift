//
// CreateInboxDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Options for creating an inbox. An inbox has a real email address that can send and receive emails. Inboxes can be permanent or expire at a given time. Inboxes are either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; mailboxes. Use &#x60;SMTP&#x60; for public facing mailboxes and &#x60;HTTP&#x60; for test email accounts. &#x60;SMTP&#x60; inboxes are processed by a mail server running at &#x60;mx.mailslurp.com&#x60; while &#x60;HTTP&#x60; inboxes are processed by AWS SES. Inboxes can use a custom email address (by verifying your own domain) or a randomly assigned email ending in either &#x60;mailslurp.com&#x60; or (if &#x60;useDomainPool&#x60; is enabled) ending in a similar domain such as &#x60;mailslurp.xyz&#x60; (selected at random).  */
@objc public class CreateInboxDto: NSObject, Codable {

    public enum InboxType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpInbox = "SMTP_INBOX"
    }
    /** Grant team access to this inbox and the emails that belong to it for team members of your organization. */
    public var allowTeamAccess: Bool?
    public var allowTeamAccessNum: NSNumber? {
        get {
            return allowTeamAccess as NSNumber?
        }
    }
    /** Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with */
    public var _description: String?
    /** A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. */
    public var emailAddress: String?
    /** Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. */
    public var expiresAt: Date?
    /** Number of milliseconds that inbox should exist for */
    public var expiresIn: Int64?
    public var expiresInNum: NSNumber? {
        get {
            return expiresIn as NSNumber?
        }
    }
    /** Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering */
    public var favourite: Bool?
    public var favouriteNum: NSNumber? {
        get {
            return favourite as NSNumber?
        }
    }
    /** HTTP (default) or SMTP inbox type. HTTP inboxes are best for testing while SMTP inboxes are more reliable for public inbound email consumption. When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mx.mailslurp.com&#x60;. */
    public var inboxType: InboxType?
    /** Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. */
    public var name: String?
    /** Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
    public var tags: [String]?
    /** Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. */
    public var useDomainPool: Bool?
    public var useDomainPoolNum: NSNumber? {
        get {
            return useDomainPool as NSNumber?
        }
    }

    public init(allowTeamAccess: Bool? = nil, _description: String? = nil, emailAddress: String? = nil, expiresAt: Date? = nil, expiresIn: Int64? = nil, favourite: Bool? = nil, inboxType: InboxType? = nil, name: String? = nil, tags: [String]? = nil, useDomainPool: Bool? = nil) {
        self.allowTeamAccess = allowTeamAccess
        self._description = _description
        self.emailAddress = emailAddress
        self.expiresAt = expiresAt
        self.expiresIn = expiresIn
        self.favourite = favourite
        self.inboxType = inboxType
        self.name = name
        self.tags = tags
        self.useDomainPool = useDomainPool
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowTeamAccess
        case _description = "description"
        case emailAddress
        case expiresAt
        case expiresIn
        case favourite
        case inboxType
        case name
        case tags
        case useDomainPool
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allowTeamAccess, forKey: .allowTeamAccess)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        try container.encodeIfPresent(favourite, forKey: .favourite)
        try container.encodeIfPresent(inboxType, forKey: .inboxType)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(useDomainPool, forKey: .useDomainPool)
    }



}
