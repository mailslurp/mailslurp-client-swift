//
// InboxIdItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Inbox ID and email address pair */
@objc public class InboxIdItem: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    public var emailAddress: String

    public init(_id: UUID, emailAddress: String) {
        self._id = _id
        self.emailAddress = emailAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case emailAddress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(emailAddress, forKey: .emailAddress)
    }
}

