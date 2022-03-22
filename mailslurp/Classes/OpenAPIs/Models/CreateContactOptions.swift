//
// CreateContactOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

@objc public class CreateContactOptions: NSObject, Codable {

    public var firstName: String?
    public var lastName: String?
    public var company: String?
    /** Set of email addresses belonging to the contact */
    public var emailAddresses: [String]?
    /** Tags that can be used to search and group contacts */
    public var tags: [String]?
    public var metaData: AnyCodable?
    /** Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. */
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }
    /** Group IDs that contact belongs to */
    public var groupId: UUID?

    public init(firstName: String? = nil, lastName: String? = nil, company: String? = nil, emailAddresses: [String]? = nil, tags: [String]? = nil, metaData: AnyCodable? = nil, optOut: Bool? = nil, groupId: UUID? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.emailAddresses = emailAddresses
        self.tags = tags
        self.metaData = metaData
        self.optOut = optOut
        self.groupId = groupId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case firstName
        case lastName
        case company
        case emailAddresses
        case tags
        case metaData
        case optOut
        case groupId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(emailAddresses, forKey: .emailAddresses)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(metaData, forKey: .metaData)
        try container.encodeIfPresent(optOut, forKey: .optOut)
        try container.encodeIfPresent(groupId, forKey: .groupId)
    }



}
