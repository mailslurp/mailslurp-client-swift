//
// ContactDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc public class ContactDto: NSObject, Codable { 

    public var company: String?
    public var createdAt: Date
    public var emailAddresses: [String]
    public var firstName: String?
    public var groupId: UUID?
    public var _id: UUID
    public var lastName: String?
    public var metaData: Any?
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }
    public var tags: [String]

    public init(company: String?, createdAt: Date, emailAddresses: [String], firstName: String?, groupId: UUID?, _id: UUID, lastName: String?, metaData: Any?, optOut: Bool?, tags: [String]) {
        self.company = company
        self.createdAt = createdAt
        self.emailAddresses = emailAddresses
        self.firstName = firstName
        self.groupId = groupId
        self._id = _id
        self.lastName = lastName
        self.metaData = metaData
        self.optOut = optOut
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case company
        case createdAt
        case emailAddresses
        case firstName
        case groupId
        case _id = "id"
        case lastName
        case metaData
        case optOut
        case tags
    }

}
