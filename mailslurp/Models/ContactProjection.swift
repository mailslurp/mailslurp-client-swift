//
// ContactProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Email contact for address book */
@objc public class ContactProjection: NSObject, Codable, JSONEncodable {

    public var createdAt: Date
    public var emailAddress: String?
    public var emailAddresses: [String]?
    public var firstName: String?
    public var lastName: String?
    public var company: String?
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }
    public var _id: UUID
    public var groupId: UUID?

    public init(createdAt: Date, emailAddress: String? = nil, emailAddresses: [String]? = nil, firstName: String? = nil, lastName: String? = nil, company: String? = nil, optOut: Bool? = nil, _id: UUID, groupId: UUID? = nil) {
        self.createdAt = createdAt
        self.emailAddress = emailAddress
        self.emailAddresses = emailAddresses
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.optOut = optOut
        self._id = _id
        self.groupId = groupId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case emailAddress
        case emailAddresses
        case firstName
        case lastName
        case company
        case optOut
        case _id = "id"
        case groupId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(emailAddresses, forKey: .emailAddresses)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(optOut, forKey: .optOut)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(groupId, forKey: .groupId)
    }
}

