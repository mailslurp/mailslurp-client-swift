//
// OrganizationInboxProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Organization team inbox */
@objc public class OrganizationInboxProjection: NSObject, Codable {

    public enum InboxType: String, Codable, CaseIterable {
        case httpInbox = "HTTP_INBOX"
        case smtpInbox = "SMTP_INBOX"
    }
    /** ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods &#x60;waitForLatestEmail&#x60; and &#x60;getEmails&#x60; methods respectively. Inboxes can be used with aliases to forward emails automatically. */
    public var _id: UUID
    /** When the inbox was created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;. */
    public var createdAt: Date
    /** Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search */
    public var name: String?
    /** The inbox&#39;s email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so &#x60;+123&#x60; additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. */
    public var emailAddress: String?
    /** Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering */
    public var favourite: Bool
    /** Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
    public var tags: [String]?
    /** Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/ */
    public var teamAccess: Bool
    /** Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). */
    public var inboxType: InboxType?
    /** Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes. */
    public var readOnly: Bool
    /** Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions. */
    public var virtualInbox: Bool?
    public var virtualInboxNum: NSNumber? {
        get {
            return virtualInbox as NSNumber?
        }
    }

    public init(_id: UUID, createdAt: Date, name: String? = nil, emailAddress: String? = nil, favourite: Bool, tags: [String]? = nil, teamAccess: Bool, inboxType: InboxType? = nil, readOnly: Bool, virtualInbox: Bool? = nil) {
        self._id = _id
        self.createdAt = createdAt
        self.name = name
        self.emailAddress = emailAddress
        self.favourite = favourite
        self.tags = tags
        self.teamAccess = teamAccess
        self.inboxType = inboxType
        self.readOnly = readOnly
        self.virtualInbox = virtualInbox
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case createdAt
        case name
        case emailAddress
        case favourite
        case tags
        case teamAccess
        case inboxType
        case readOnly
        case virtualInbox
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encode(favourite, forKey: .favourite)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encode(teamAccess, forKey: .teamAccess)
        try container.encodeIfPresent(inboxType, forKey: .inboxType)
        try container.encode(readOnly, forKey: .readOnly)
        try container.encodeIfPresent(virtualInbox, forKey: .virtualInbox)
    }



}
