//
// AttachmentEntity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Email attachment entity */
public struct AttachmentEntity: Codable, Hashable {

    public var id: UUID?
    public var attachmentId: String
    public var bucket: String?
    public var userId: UUID
    public var contentType: String?
    public var contentLength: Int64?
    public var name: String?
    public var createdAt: Date
    public var updatedAt: Date

    public init(id: UUID? = nil, attachmentId: String, bucket: String? = nil, userId: UUID, contentType: String? = nil, contentLength: Int64? = nil, name: String? = nil, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.attachmentId = attachmentId
        self.bucket = bucket
        self.userId = userId
        self.contentType = contentType
        self.contentLength = contentLength
        self.name = name
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case attachmentId
        case bucket
        case userId
        case contentType
        case contentLength
        case name
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(attachmentId, forKey: .attachmentId)
        try container.encodeIfPresent(bucket, forKey: .bucket)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(contentLength, forKey: .contentLength)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }



}
