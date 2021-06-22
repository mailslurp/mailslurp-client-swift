//
// WebhookProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Representation of a webhook */
@objc public class WebhookProjection: NSObject, Codable {

    public var createdAt: Date
    public var _id: UUID
    public var inboxId: UUID
    public var name: String?
    public var updatedAt: Date
    public var url: String

    public init(createdAt: Date, _id: UUID, inboxId: UUID, name: String? = nil, updatedAt: Date, url: String) {
        self.createdAt = createdAt
        self._id = _id
        self.inboxId = inboxId
        self.name = name
        self.updatedAt = updatedAt
        self.url = url
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case _id = "id"
        case inboxId
        case name
        case updatedAt
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(_id, forKey: ._id)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(url, forKey: .url)
    }



}
