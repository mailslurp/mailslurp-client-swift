//
// ConnectorSyncEventDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ConnectorSyncEventDto: NSObject, Codable, JSONEncodable {

    public enum SyncStatus: String, Codable, CaseIterable {
        case success = "SUCCESS"
        case internalError = "INTERNAL_ERROR"
        case subscriptionError = "SUBSCRIPTION_ERROR"
        case connectionError = "CONNECTION_ERROR"
        case notFound = "NOT_FOUND"
    }
    public var _id: UUID
    public var connectorId: UUID
    public var syncStatus: SyncStatus
    public var syncCount: Int64
    public var message: String?
    public var createdAt: Date

    public init(_id: UUID, connectorId: UUID, syncStatus: SyncStatus, syncCount: Int64, message: String? = nil, createdAt: Date) {
        self._id = _id
        self.connectorId = connectorId
        self.syncStatus = syncStatus
        self.syncCount = syncCount
        self.message = message
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case connectorId
        case syncStatus
        case syncCount
        case message
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(connectorId, forKey: .connectorId)
        try container.encode(syncStatus, forKey: .syncStatus)
        try container.encode(syncCount, forKey: .syncCount)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

