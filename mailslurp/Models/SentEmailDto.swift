//
// SentEmailDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Sent email details */
public struct SentEmailDto: Codable, Hashable {

    /** ID of sent email */
    public var id: UUID
    /** User ID */
    public var userId: UUID
    /** Inbox ID email was sent from */
    public var inboxId: UUID
    /** Recipients email was sent to */
    public var to: [String]?
    public var from: String?
    public var replyTo: String?
    public var cc: [String]?
    public var bcc: [String]?
    /** Array of IDs of attachments that were sent with this email */
    public var attachments: [String]?
    public var subject: String?
    /** MD5 Hash */
    public var bodyMD5Hash: String?
    public var body: String?
    public var charset: String?
    public var isHTML: Bool?
    public var sentAt: Date
    public var pixelIds: [UUID]?
    public var messageId: String?
    public var virtualSend: Bool?
    public var html: Bool?

    public init(id: UUID, userId: UUID, inboxId: UUID, to: [String]? = nil, from: String? = nil, replyTo: String? = nil, cc: [String]? = nil, bcc: [String]? = nil, attachments: [String]? = nil, subject: String? = nil, bodyMD5Hash: String? = nil, body: String? = nil, charset: String? = nil, isHTML: Bool? = nil, sentAt: Date, pixelIds: [UUID]? = nil, messageId: String? = nil, virtualSend: Bool? = nil, html: Bool? = nil) {
        self.id = id
        self.userId = userId
        self.inboxId = inboxId
        self.to = to
        self.from = from
        self.replyTo = replyTo
        self.cc = cc
        self.bcc = bcc
        self.attachments = attachments
        self.subject = subject
        self.bodyMD5Hash = bodyMD5Hash
        self.body = body
        self.charset = charset
        self.isHTML = isHTML
        self.sentAt = sentAt
        self.pixelIds = pixelIds
        self.messageId = messageId
        self.virtualSend = virtualSend
        self.html = html
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case userId
        case inboxId
        case to
        case from
        case replyTo
        case cc
        case bcc
        case attachments
        case subject
        case bodyMD5Hash
        case body
        case charset
        case isHTML
        case sentAt
        case pixelIds
        case messageId
        case virtualSend
        case html
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(replyTo, forKey: .replyTo)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(charset, forKey: .charset)
        try container.encodeIfPresent(isHTML, forKey: .isHTML)
        try container.encode(sentAt, forKey: .sentAt)
        try container.encodeIfPresent(pixelIds, forKey: .pixelIds)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(virtualSend, forKey: .virtualSend)
        try container.encodeIfPresent(html, forKey: .html)
    }



}
