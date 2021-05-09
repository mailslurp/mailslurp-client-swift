//
// EmailPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Preview of an email message. For full message (including body and attachments) call the &#x60;getEmail&#x60; or other email endpoints with the provided email ID. */

@objc public class EmailPreview: NSObject, Codable { 

    /** List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. */
    public var attachments: [String]?
    /** List of &#x60;BCC&#x60; recipients email was addressed to */
    public var bcc: [String]?
    /** List of &#x60;CC&#x60; recipients email was addressed to */
    public var cc: [String]?
    /** When was the email received by MailSlurp */
    public var createdAt: Date?
    /** Who the email was sent from */
    public var from: String?
    /** ID of the email entity */
    public var _id: UUID?
    /** Read flag. Has the email ever been viewed in the dashboard or fetched via the API? If so the email is marked as read. */
    public var read: Bool?
    public var readNum: NSNumber? {
        get {
            return read as NSNumber?
        }
    }
    /** The subject line of the email message */
    public var subject: String?
    /** List of &#x60;To&#x60; recipients that email was addressed to */
    public var to: [String]?

    public init(attachments: [String]?, bcc: [String]?, cc: [String]?, createdAt: Date?, from: String?, _id: UUID?, read: Bool?, subject: String?, to: [String]?) {
        self.attachments = attachments
        self.bcc = bcc
        self.cc = cc
        self.createdAt = createdAt
        self.from = from
        self._id = _id
        self.read = read
        self.subject = subject
        self.to = to
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case attachments
        case bcc
        case cc
        case createdAt
        case from
        case _id = "id"
        case read
        case subject
        case to
    }

}
