//
// ContactProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc public class ContactProjection: NSObject, Codable {

    public var company: String?
    public var createdAt: Date
    public var emailAddresses: [String]?
    public var firstName: String?
    public var groupId: UUID?
    public var _id: UUID
    public var lastName: String?
    public var optOut: Bool?
    public var optOutNum: NSNumber? {
        get {
            return optOut as NSNumber?
        }
    }

    public init(company: String? = nil, createdAt: Date, emailAddresses: [String]? = nil, firstName: String? = nil, groupId: UUID? = nil, _id: UUID, lastName: String? = nil, optOut: Bool? = nil) {
        self.company = company
        self.createdAt = createdAt
        self.emailAddresses = emailAddresses
        self.firstName = firstName
        self.groupId = groupId
        self._id = _id
        self.lastName = lastName
        self.optOut = optOut
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case company
        case createdAt
        case emailAddresses
        case firstName
        case groupId
        case _id = "id"
        case lastName
        case optOut
    }

}
