//
// ConnectorProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Connector */
@objc public class ConnectorProjection: NSObject, Codable, JSONEncodable {

    public enum ConnectorType: String, Codable, CaseIterable {
        case imap = "IMAP"
    }
    public enum SyncScheduleType: String, Codable, CaseIterable {
        case interval = "INTERVAL"
    }
    public var _id: UUID?
    public var inboxId: UUID
    public var userId: UUID
    public var createdAt: Date
    public var connectorType: ConnectorType
    public var syncScheduleType: SyncScheduleType
    public var syncInterval: Int?
    public var syncIntervalNum: NSNumber? {
        get {
            return syncInterval as NSNumber?
        }
    }
    public var syncEnabled: Bool

    public init(_id: UUID? = nil, inboxId: UUID, userId: UUID, createdAt: Date, connectorType: ConnectorType, syncScheduleType: SyncScheduleType, syncInterval: Int? = nil, syncEnabled: Bool) {
        self._id = _id
        self.inboxId = inboxId
        self.userId = userId
        self.createdAt = createdAt
        self.connectorType = connectorType
        self.syncScheduleType = syncScheduleType
        self.syncInterval = syncInterval
        self.syncEnabled = syncEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case inboxId
        case userId
        case createdAt
        case connectorType
        case syncScheduleType
        case syncInterval
        case syncEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(userId, forKey: .userId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(connectorType, forKey: .connectorType)
        try container.encode(syncScheduleType, forKey: .syncScheduleType)
        try container.encodeIfPresent(syncInterval, forKey: .syncInterval)
        try container.encode(syncEnabled, forKey: .syncEnabled)
    }
}
