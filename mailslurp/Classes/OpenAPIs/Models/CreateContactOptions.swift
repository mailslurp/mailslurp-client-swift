//
// CreateContactOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

@objc public class CreateContactOptions: NSObject, Codable {

    /** Set of email addresses belonging to the contact */
    public var emailAddresses: [String]?
    public var firstName: String?
    /** Group IDs that contact belongs to */
    public var groupId: UUID?
    public var metaData: AnyCodable?
    /** Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. */
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }
    /** Tags that can be used to search and group contacts */
    public var tags: [String]?
    public var lastName: String?
    public var company: String?

    public init(emailAddresses: [String]? = nil, firstName: String? = nil, groupId: UUID? = nil, metaData: AnyCodable? = nil, optOut: Bool? = nil, tags: [String]? = nil, lastName: String? = nil, company: String? = nil) {
        self.emailAddresses = emailAddresses
        self.firstName = firstName
        self.groupId = groupId
        self.metaData = metaData
        self.optOut = optOut
        self.tags = tags
        self.lastName = lastName
        self.company = company
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddresses
        case firstName
        case groupId
        case metaData
        case optOut
        case tags
        case lastName
        case company
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emailAddresses, forKey: .emailAddresses)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(metaData, forKey: .metaData)
        try container.encodeIfPresent(optOut, forKey: .optOut)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(company, forKey: .company)
    }



}
