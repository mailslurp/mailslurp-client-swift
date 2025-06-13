//
// BouncedRecipientDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Bounced recipient */
@objcMembers public class BouncedRecipientDto: NSObject, Codable, ParameterConvertible {

    public var _id: UUID
    public var userId: UUID?
    public var sentEmailId: UUID?
    public var recipient: String
    public var diagnosticCode: String?
    public var action: String?
    public var bounceType: String?
    public var status: String?
    public var createdAt: Date

    public init(_id: UUID, userId: UUID? = nil, sentEmailId: UUID? = nil, recipient: String, diagnosticCode: String? = nil, action: String? = nil, bounceType: String? = nil, status: String? = nil, createdAt: Date) {
        self._id = _id
        self.userId = userId
        self.sentEmailId = sentEmailId
        self.recipient = recipient
        self.diagnosticCode = diagnosticCode
        self.action = action
        self.bounceType = bounceType
        self.status = status
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case sentEmailId
        case recipient
        case diagnosticCode
        case action
        case bounceType
        case status
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(sentEmailId, forKey: .sentEmailId)
        try container.encode(recipient, forKey: .recipient)
        try container.encodeIfPresent(diagnosticCode, forKey: .diagnosticCode)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(bounceType, forKey: .bounceType)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encode(createdAt, forKey: .createdAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension BouncedRecipientDto: Identifiable {}
