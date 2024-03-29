//
// ListUnsubscribeRecipientProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** List unsubscribe recipient */
@objc public class ListUnsubscribeRecipientProjection: NSObject, Codable, JSONEncodable {

    public var createdAt: Date
    public var emailAddress: String
    public var domainId: UUID?
    public var _id: UUID

    public init(createdAt: Date, emailAddress: String, domainId: UUID? = nil, _id: UUID) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self.domainId = domainId
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case emailAddress
        case domainId
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(domainId, forKey: .domainId)
        try container.encode(_id, forKey: ._id)
    }
}

