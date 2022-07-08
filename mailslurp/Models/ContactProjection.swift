//
// ContactProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Email contact for address book */
@objc public class ContactProjection: NSObject, Codable {

    public var _id: UUID
    public var groupId: UUID?
    public var createdAt: Date
    public var firstName: String?
    public var lastName: String?
    public var company: String?
    public var emailAddresses: [String]?
    public var optOut: Bool

    public init(_id: UUID, groupId: UUID? = nil, createdAt: Date, firstName: String? = nil, lastName: String? = nil, company: String? = nil, emailAddresses: [String]? = nil, optOut: Bool) {
        self._id = _id
        self.groupId = groupId
        self.createdAt = createdAt
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.emailAddresses = emailAddresses
        self.optOut = optOut
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case groupId
        case createdAt
        case firstName
        case lastName
        case company
        case emailAddresses
        case optOut
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(emailAddresses, forKey: .emailAddresses)
        try container.encode(optOut, forKey: .optOut)
    }



}
