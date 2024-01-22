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
    public var userId: UUID
    public var inboxId: UUID
    public var syncEnabled: Bool
    public var connectorType: ConnectorType
    public var syncScheduleType: SyncScheduleType
    public var syncInterval: Int?
    public var syncIntervalNum: NSNumber? {
        get {
            return syncInterval as NSNumber?
        }
    }
    public var createdAt: Date
    public var _id: UUID?

    public init(userId: UUID, inboxId: UUID, syncEnabled: Bool, connectorType: ConnectorType, syncScheduleType: SyncScheduleType, syncInterval: Int? = nil, createdAt: Date, _id: UUID? = nil) {
        self.userId = userId
        self.inboxId = inboxId
        self.syncEnabled = syncEnabled
        self.connectorType = connectorType
        self.syncScheduleType = syncScheduleType
        self.syncInterval = syncInterval
        self.createdAt = createdAt
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case inboxId
        case syncEnabled
        case connectorType
        case syncScheduleType
        case syncInterval
        case createdAt
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(syncEnabled, forKey: .syncEnabled)
        try container.encode(connectorType, forKey: .connectorType)
        try container.encode(syncScheduleType, forKey: .syncScheduleType)
        try container.encodeIfPresent(syncInterval, forKey: .syncInterval)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(_id, forKey: ._id)
    }
}

