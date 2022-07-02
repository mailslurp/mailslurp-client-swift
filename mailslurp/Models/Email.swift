//
// Email.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The `body` contains the email content. If you want the original SMTP message see the `getRawEmail` endpoints. The attachments can be fetched using the AttachmentController */
public struct Email: Codable, Hashable {

    /** ID of the email entity */
    public var id: UUID
    /** ID of user that email belongs to */
    public var userId: UUID
    /** ID of the inbox that received the email */
    public var inboxId: UUID
    /** List of `To` recipient email addresses that the email was addressed to. See recipients object for names. */
    public var to: [String]
    /** Who the email was sent from. An email address - see fromName for the sender name. */
    public var from: String?
    public var sender: Sender?
    public var recipients: EmailRecipients?
    /** The `replyTo` field on the received email message */
    public var replyTo: String?
    /** List of `CC` recipients email addresses that the email was addressed to. See recipients object for names. */
    public var cc: [String]?
    /** List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names. */
    public var bcc: [String]?
    /** Collection of SMTP headers attached to email */
    public var headers: [String: String]?
    /** List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. */
    public var attachments: [String]?
    /** The subject line of the email message as specified by SMTP subject header */
    public var subject: String?
    /** The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests. */
    public var body: String?
    /** An excerpt of the body of the email message for quick preview . */
    public var bodyExcerpt: String?
    /** A hash signature of the email message using MD5. Useful for comparing emails without fetching full body. */
    public var bodyMD5Hash: String?
    /** Is the email body content type HTML? */
    public var isHTML: Bool?
    /** Detected character set of the email body such as UTF-8 */
    public var charset: String?
    public var analysis: EmailAnalysis?
    /** When was the email received by MailSlurp */
    public var createdAt: Date
    /** When was the email last updated */
    public var updatedAt: Date
    /** Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. */
    public var read: Bool
    /** Can the email be accessed by organization team members */
    public var teamAccess: Bool
    public var html: Bool?

    public init(id: UUID, userId: UUID, inboxId: UUID, to: [String], from: String? = nil, sender: Sender? = nil, recipients: EmailRecipients? = nil, replyTo: String? = nil, cc: [String]? = nil, bcc: [String]? = nil, headers: [String: String]? = nil, attachments: [String]? = nil, subject: String? = nil, body: String? = nil, bodyExcerpt: String? = nil, bodyMD5Hash: String? = nil, isHTML: Bool? = nil, charset: String? = nil, analysis: EmailAnalysis? = nil, createdAt: Date, updatedAt: Date, read: Bool, teamAccess: Bool, html: Bool? = nil) {
        self.id = id
        self.userId = userId
        self.inboxId = inboxId
        self.to = to
        self.from = from
        self.sender = sender
        self.recipients = recipients
        self.replyTo = replyTo
        self.cc = cc
        self.bcc = bcc
        self.headers = headers
        self.attachments = attachments
        self.subject = subject
        self.body = body
        self.bodyExcerpt = bodyExcerpt
        self.bodyMD5Hash = bodyMD5Hash
        self.isHTML = isHTML
        self.charset = charset
        self.analysis = analysis
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.read = read
        self.teamAccess = teamAccess
        self.html = html
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userId
        case inboxId
        case to
        case from
        case sender
        case recipients
        case replyTo
        case cc
        case bcc
        case headers
        case attachments
        case subject
        case body
        case bodyExcerpt
        case bodyMD5Hash
        case isHTML
        case charset
        case analysis
        case createdAt
        case updatedAt
        case read
        case teamAccess
        case html
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(to, forKey: .to)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(sender, forKey: .sender)
        try container.encodeIfPresent(recipients, forKey: .recipients)
        try container.encodeIfPresent(replyTo, forKey: .replyTo)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(headers, forKey: .headers)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(bodyExcerpt, forKey: .bodyExcerpt)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encodeIfPresent(isHTML, forKey: .isHTML)
        try container.encodeIfPresent(charset, forKey: .charset)
        try container.encodeIfPresent(analysis, forKey: .analysis)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(read, forKey: .read)
        try container.encode(teamAccess, forKey: .teamAccess)
        try container.encodeIfPresent(html, forKey: .html)
    }



}
