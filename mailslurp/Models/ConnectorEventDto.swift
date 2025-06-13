//
// ConnectorEventDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class ConnectorEventDto: NSObject, Codable, ParameterConvertible {

    public enum Status: String, Sendable, Codable, CaseIterable {
        case success = "SUCCESS"
        case internalError = "INTERNAL_ERROR"
        case subscriptionError = "SUBSCRIPTION_ERROR"
        case connectionError = "CONNECTION_ERROR"
        case notFound = "NOT_FOUND"
    }
    public enum EventType: String, Sendable, Codable, CaseIterable {
        case send = "SEND"
        case sync = "SYNC"
    }
    public var _id: UUID
    public var connectorId: UUID
    public var status: Status
    public var eventType: EventType
    public var size: Int64
    public var message: String?
    public var logs: String?
    public var seen: Bool?
    public var seenNum: NSNumber? {
        get {
            return seen as NSNumber?
        }
    }
    public var createdAt: Date

    public init(_id: UUID, connectorId: UUID, status: Status, eventType: EventType, size: Int64, message: String? = nil, logs: String? = nil, seen: Bool? = nil, createdAt: Date) {
        self._id = _id
        self.connectorId = connectorId
        self.status = status
        self.eventType = eventType
        self.size = size
        self.message = message
        self.logs = logs
        self.seen = seen
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case connectorId
        case status
        case eventType
        case size
        case message
        case logs
        case seen
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(connectorId, forKey: .connectorId)
        try container.encode(status, forKey: .status)
        try container.encode(eventType, forKey: .eventType)
        try container.encode(size, forKey: .size)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(logs, forKey: .logs)
        try container.encodeIfPresent(seen, forKey: .seen)
        try container.encode(createdAt, forKey: .createdAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ConnectorEventDto: Identifiable {}
