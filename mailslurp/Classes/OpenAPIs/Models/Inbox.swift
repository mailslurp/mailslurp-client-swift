//
// Inbox.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Representation of an inbox with an email address. Emails can be sent to or from this email address. */

@objc public class Inbox: NSObject, Codable { 

    /** When was the inbox created */
    public var createdAt: Date?
    /** Optional description of an inbox for labelling purposes */
    public var _description: String?
    /** The inbox&#39;s email address. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints. */
    public var emailAddress: String?
    /** When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. Timestamp passed as string. */
    public var expiresAt: String?
    /** Is the inbox favourited */
    public var favourite: Bool?
    public var favouriteNum: NSNumber? {
        get {
            return favourite as NSNumber?
        }
    }
    /** ID of the inbox */
    public var _id: UUID?
    /** Optional name of the inbox. Displayed in the dashboard for easier search */
    public var name: String?
    /** Tags that inbox has been tagged with */
    public var tags: [String]?
    /** ID of user that inbox belongs to */
    public var userId: UUID?

    public init(createdAt: Date?, _description: String?, emailAddress: String?, expiresAt: String?, favourite: Bool?, _id: UUID?, name: String?, tags: [String]?, userId: UUID?) {
        self.createdAt = createdAt
        self._description = _description
        self.emailAddress = emailAddress
        self.expiresAt = expiresAt
        self.favourite = favourite
        self._id = _id
        self.name = name
        self.tags = tags
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case createdAt
        case _description = "description"
        case emailAddress
        case expiresAt
        case favourite
        case _id = "id"
        case name
        case tags
        case userId
    }

}
