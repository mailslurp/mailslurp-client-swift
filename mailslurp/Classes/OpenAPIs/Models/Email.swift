//
// Email.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The &#x60;body&#x60; contains the email content. If you want the original SMTP message see the &#x60;getRawEmail&#x60; endpoints. The attachments can be fetched using the AttachmentController */
@objc public class Email: NSObject, Codable {

    public var analysis: EmailAnalysis?
    /** List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. */
    public var attachments: [String]?
    /** List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. */
    public var bcc: [String]?
    /** The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. */
    public var body: String?
    /** An excerpt of the body of the email message for quick preview . */
    public var bodyExcerpt: String?
    /** A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. */
    public var bodyMD5Hash: String?
    /** List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. */
    public var cc: [String]?
    /** Detected character set of the email body such as UTF-8 */
    public var charset: String?
    /** When was the email received by MailSlurp */
    public var createdAt: Date?
    /** Who the email was sent from. An email address - see fromName for the sender name. */
    public var from: String?
    /** Collection of SMTP headers attached to email */
    public var headers: [String: String]?
    /** ID of the email entity */
    public var _id: UUID?
    /** ID of the inbox that received the email */
    public var inboxId: UUID?
    /** Is the email body HTML */
    public var isHTML: Bool?
    public var isHTMLNum: NSNumber? {
        get {
            return isHTML as NSNumber?
        }
    }
    /** Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. */
    public var read: Bool?
    public var readNum: NSNumber? {
        get {
            return read as NSNumber?
        }
    }
    public var recipients: EmailRecipients?
    /** The &#x60;replyTo&#x60; field on the received email message */
    public var replyTo: String?
    public var sender: Sender?
    /** The subject line of the email message as specified by SMTP subject header */
    public var subject: String?
    /** Can the email be accessed by organization team members */
    public var teamAccess: Bool?
    public var teamAccessNum: NSNumber? {
        get {
            return teamAccess as NSNumber?
        }
    }
    /** List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. */
    public var to: [String]?
    /** When was the email last updated */
    public var updatedAt: Date?
    /** ID of user that email belongs to */
    public var userId: UUID?

    public init(analysis: EmailAnalysis? = nil, attachments: [String]? = nil, bcc: [String]? = nil, body: String? = nil, bodyExcerpt: String? = nil, bodyMD5Hash: String? = nil, cc: [String]? = nil, charset: String? = nil, createdAt: Date? = nil, from: String? = nil, headers: [String: String]? = nil, _id: UUID? = nil, inboxId: UUID? = nil, isHTML: Bool? = nil, read: Bool? = nil, recipients: EmailRecipients? = nil, replyTo: String? = nil, sender: Sender? = nil, subject: String? = nil, teamAccess: Bool? = nil, to: [String]? = nil, updatedAt: Date? = nil, userId: UUID? = nil) {
        self.analysis = analysis
        self.attachments = attachments
        self.bcc = bcc
        self.body = body
        self.bodyExcerpt = bodyExcerpt
        self.bodyMD5Hash = bodyMD5Hash
        self.cc = cc
        self.charset = charset
        self.createdAt = createdAt
        self.from = from
        self.headers = headers
        self._id = _id
        self.inboxId = inboxId
        self.isHTML = isHTML
        self.read = read
        self.recipients = recipients
        self.replyTo = replyTo
        self.sender = sender
        self.subject = subject
        self.teamAccess = teamAccess
        self.to = to
        self.updatedAt = updatedAt
        self.userId = userId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case analysis
        case attachments
        case bcc
        case body
        case bodyExcerpt
        case bodyMD5Hash
        case cc
        case charset
        case createdAt
        case from
        case headers
        case _id = "id"
        case inboxId
        case isHTML
        case read
        case recipients
        case replyTo
        case sender
        case subject
        case teamAccess
        case to
        case updatedAt
        case userId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(analysis, forKey: .analysis)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(bodyExcerpt, forKey: .bodyExcerpt)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(charset, forKey: .charset)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(isHTML, forKey: .isHTML)
        try container.encodeIfPresent(read, forKey: .read)
        try container.encodeIfPresent(recipients, forKey: .recipients)
        try container.encodeIfPresent(replyTo, forKey: .replyTo)
        try container.encodeIfPresent(sender, forKey: .sender)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(teamAccess, forKey: .teamAccess)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(userId, forKey: .userId)
    }



}
