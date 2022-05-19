//
// AttachmentProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
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
    public var userId: UUID
    /** Attachment ID */
    public var attachmentId: String
    public var updatedAt: Date
    public var createdAt: Date
    /** Content type of attachment. */
    public var contentType: String?

    public init(name: String? = nil, contentLength: Int64? = nil, userId: UUID, attachmentId: String, updatedAt: Date, createdAt: Date, contentType: String? = nil) {
        self.name = name
        self.contentLength = contentLength
        self.userId = userId
        self.attachmentId = attachmentId
        self.updatedAt = updatedAt
        self.createdAt = createdAt
        self.contentType = contentType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case contentLength
        case userId
        case attachmentId
        case updatedAt
        case createdAt
        case contentType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(contentLength, forKey: .contentLength)
        try container.encode(userId, forKey: .userId)
        try container.encode(attachmentId, forKey: .attachmentId)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(contentType, forKey: .contentType)
    }



}
