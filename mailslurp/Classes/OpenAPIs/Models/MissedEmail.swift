//
// MissedEmail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc public class MissedEmail: NSObject, Codable { 

    public var attachmentCount: Int
    public var bcc: [String]
    public var bodyExcerpt: String?
    public var cc: [String]
    public var createdAt: Date
    public var _id: UUID?
    public var inboxIds: [UUID]
    public var subject: String?
    public var to: [String]
    public var updatedAt: Date
    public var userId: UUID

    public init(attachmentCount: Int, bcc: [String], bodyExcerpt: String?, cc: [String], createdAt: Date, _id: UUID?, inboxIds: [UUID], subject: String?, to: [String], updatedAt: Date, userId: UUID) {
        self.attachmentCount = attachmentCount
        self.bcc = bcc
        self.bodyExcerpt = bodyExcerpt
        self.cc = cc
        self.createdAt = createdAt
        self._id = _id
        self.inboxIds = inboxIds
        self.subject = subject
        self.to = to
        self.updatedAt = updatedAt
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case attachmentCount
        case bcc
        case bodyExcerpt
        case cc
        case createdAt
        case _id = "id"
        case inboxIds
        case subject
        case to
        case updatedAt
        case userId
    }

}
