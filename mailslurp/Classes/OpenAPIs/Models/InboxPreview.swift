//
// InboxPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class InboxPreview: NSObject, Codable {

    public enum InboxType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpInbox = "SMTP_INBOX"
    }
    /** When the inbox was created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;. */
    public var createdAt: Date?
    /** The inbox&#39;s email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so &#x60;+123&#x60; additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. */
    public var emailAddress: String?
    /** Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. */
    public var expiresAt: String?
    /** Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering */
    public var favourite: Bool?
    public var favouriteNum: NSNumber? {
        get {
            return favourite as NSNumber?
        }
    }
    /** ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods &#x60;waitForLatestEmail&#x60; and &#x60;getEmails&#x60; methods respectively. Inboxes can be used with aliases to forward emails automatically. */
    public var _id: UUID?
    /** Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great for testing. SMTP inboxes are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to &#x60;10 mx.mailslurp.com&#x60; for inbound messages. */
    public var inboxType: InboxType?
    /** Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search */
    public var name: String?
    /** Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
    public var tags: [String]?
    /** Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/ */
    public var teamAccess: Bool?
    public var teamAccessNum: NSNumber? {
        get {
            return teamAccess as NSNumber?
        }
    }

    public init(createdAt: Date? = nil, emailAddress: String? = nil, expiresAt: String? = nil, favourite: Bool? = nil, _id: UUID? = nil, inboxType: InboxType? = nil, name: String? = nil, tags: [String]? = nil, teamAccess: Bool? = nil) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self.expiresAt = expiresAt
        self.favourite = favourite
        self._id = _id
        self.inboxType = inboxType
        self.name = name
        self.tags = tags
        self.teamAccess = teamAccess
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case emailAddress
        case expiresAt
        case favourite
        case _id = "id"
        case inboxType
        case name
        case tags
        case teamAccess
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(favourite, forKey: .favourite)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(inboxType, forKey: .inboxType)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(teamAccess, forKey: .teamAccess)
    }



}
