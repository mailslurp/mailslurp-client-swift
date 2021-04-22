//
// Email.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Email model (also referred to as EmailDto). Represents an email that was received by an inbox. If you want the original SMTP message see the &#x60;getRawEmail&#x60; endpoint. */

@objc public class Email: NSObject, Codable { 

    public var analysis: EmailAnalysis?
    /** List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. */
    public var attachments: [String]?
    /** List of &#x60;BCC&#x60; recipients email was addressed to */
    public var bcc: [String]?
    /** The body of the email message */
    public var body: String?
    /** A hash signature of the email message */
    public var bodyMD5Hash: String?
    /** List of &#x60;CC&#x60; recipients email was addressed to */
    public var cc: [String]?
    /** Detected character set of the email body such as UTF-8 */
    public var charset: String?
    /** When was the email received by MailSlurp */
    public var createdAt: Date?
    /** Who the email was sent from */
    public var from: String?
    public var headers: [String:String]?
    /** ID of the email */
    public var _id: UUID?
    /** ID of the inbox that received the email */
    public var inboxId: UUID?
    /** Was HTML sent in the email body */
    public var isHTML: Bool?
    public var isHTMLNum: NSNumber? {
        get {
            return isHTML as NSNumber?
        }
    }
    /** Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints */
    public var read: Bool?
    public var readNum: NSNumber? {
        get {
            return read as NSNumber?
        }
    }
    /** The replyTo field on the received email */
    public var replyTo: String?
    /** The subject line of the email message */
    public var subject: String?
    /** Can the email be accessed by organization team members */
    public var teamAccess: Bool?
    public var teamAccessNum: NSNumber? {
        get {
            return teamAccess as NSNumber?
        }
    }
    /** List of &#x60;To&#x60; recipients email was addressed to */
    public var to: [String]?
    /** When was the email last updated */
    public var updatedAt: Date?
    /** ID of user that email belongs */
    public var userId: UUID?

    public init(analysis: EmailAnalysis?, attachments: [String]?, bcc: [String]?, body: String?, bodyMD5Hash: String?, cc: [String]?, charset: String?, createdAt: Date?, from: String?, headers: [String:String]?, _id: UUID?, inboxId: UUID?, isHTML: Bool?, read: Bool?, replyTo: String?, subject: String?, teamAccess: Bool?, to: [String]?, updatedAt: Date?, userId: UUID?) {
        self.analysis = analysis
        self.attachments = attachments
        self.bcc = bcc
        self.body = body
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
        self.replyTo = replyTo
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
        case replyTo
        case subject
        case teamAccess
        case to
        case updatedAt
        case userId
    }

}
