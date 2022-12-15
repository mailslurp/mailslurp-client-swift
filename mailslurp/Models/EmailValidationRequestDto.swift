//
// EmailValidationRequestDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Email validation request */
@objc public class EmailValidationRequestDto: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    public var userId: UUID
    public var emailAddress: String
    public var isValid: Bool
    public var createdAt: Date
    public var updatedAt: Date

    public init(_id: UUID, userId: UUID, emailAddress: String, isValid: Bool, createdAt: Date, updatedAt: Date) {
        self._id = _id
        self.userId = userId
        self.emailAddress = emailAddress
        self.isValid = isValid
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case emailAddress
        case isValid
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(isValid, forKey: .isValid)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}
