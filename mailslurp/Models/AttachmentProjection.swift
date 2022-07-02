//
// AttachmentProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Email attachment data */
@objc public class AttachmentProjection: NSObject, Codable {

    public var name: String?
    /** Content length of attachment in bytes */
    public var contentLength: Int64?
    public var contentLengthNum: NSNumber? {
        get {
            return contentLength as NSNumber?
        }
    }
    /** Content type of attachment. */
    public var contentType: String?
    public var userId: UUID
    /** Attachment ID */
    public var attachmentId: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(name: String? = nil, contentLength: Int64? = nil, contentType: String? = nil, userId: UUID, attachmentId: String, createdAt: Date, updatedAt: Date) {
        self.name = name
        self.contentLength = contentLength
        self.contentType = contentType
        self.userId = userId
        self.attachmentId = attachmentId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case contentLength
        case contentType
        case userId
        case attachmentId
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(contentLength, forKey: .contentLength)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encode(userId, forKey: .userId)
        try container.encode(attachmentId, forKey: .attachmentId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }



}