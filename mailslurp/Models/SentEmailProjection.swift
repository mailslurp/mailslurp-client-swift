//
// SentEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class SentEmailProjection: NSObject, Codable, ParameterConvertible {

    public var _id: UUID
    public var from: String?
    public var sender: Sender?
    public var recipients: EmailRecipients?
    public var subject: String?
    public var attachments: [String]?
    public var inboxId: UUID
    public var userId: UUID
    public var createdAt: Date
    public var to: [String]?
    public var cc: [String]?
    public var bcc: [String]?
    public var messageId: String?
    public var inReplyTo: String?
    public var bodyExcerpt: String?
    public var textExcerpt: String?
    public var bodyMD5Hash: String?
    public var virtualSend: Bool
    public var threadId: UUID?

    public init(_id: UUID, from: String? = nil, sender: Sender? = nil, recipients: EmailRecipients? = nil, subject: String? = nil, attachments: [String]? = nil, inboxId: UUID, userId: UUID, createdAt: Date, to: [String]? = nil, cc: [String]? = nil, bcc: [String]? = nil, messageId: String? = nil, inReplyTo: String? = nil, bodyExcerpt: String? = nil, textExcerpt: String? = nil, bodyMD5Hash: String? = nil, virtualSend: Bool, threadId: UUID? = nil) {
        self._id = _id
        self.from = from
        self.sender = sender
        self.recipients = recipients
        self.subject = subject
        self.attachments = attachments
        self.inboxId = inboxId
        self.userId = userId
        self.createdAt = createdAt
        self.to = to
        self.cc = cc
        self.bcc = bcc
        self.messageId = messageId
        self.inReplyTo = inReplyTo
        self.bodyExcerpt = bodyExcerpt
        self.textExcerpt = textExcerpt
        self.bodyMD5Hash = bodyMD5Hash
        self.virtualSend = virtualSend
        self.threadId = threadId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case sender
        case recipients
        case subject
        case attachments
        case inboxId
        case userId
        case createdAt
        case to
        case cc
        case bcc
        case messageId
        case inReplyTo
        case bodyExcerpt
        case textExcerpt
        case bodyMD5Hash
        case virtualSend
        case threadId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(sender, forKey: .sender)
        try container.encodeIfPresent(recipients, forKey: .recipients)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(attachments, forKey: .attachments)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(userId, forKey: .userId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(cc, forKey: .cc)
        try container.encodeIfPresent(bcc, forKey: .bcc)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(inReplyTo, forKey: .inReplyTo)
        try container.encodeIfPresent(bodyExcerpt, forKey: .bodyExcerpt)
        try container.encodeIfPresent(textExcerpt, forKey: .textExcerpt)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encode(virtualSend, forKey: .virtualSend)
        try container.encodeIfPresent(threadId, forKey: .threadId)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension SentEmailProjection: Identifiable {}
