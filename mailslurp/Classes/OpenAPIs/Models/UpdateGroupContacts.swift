//
// UpdateGroupContacts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Update group contacts options. Pass a list of contact ids to replace existing group contacts. */
@objc public class UpdateGroupContacts: NSObject, Codable {

    public var contactIds: [UUID]

    public init(contactIds: [UUID]) {
        self.contactIds = contactIds
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contactIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(contactIds, forKey: .contactIds)
    }



}
