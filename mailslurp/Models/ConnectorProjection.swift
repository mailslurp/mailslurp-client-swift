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

    public enum SyncScheduleType: String, Codable, CaseIterable {
        case interval = "INTERVAL"
    }
    public var enabled: Bool?
    public var enabledNum: NSNumber? {
        get {
            return enabled as NSNumber?
        }
    }
    public var inboxId: UUID
    public var emailAddress: String?
    public var userId: UUID
    public var syncEnabled: Bool?
    public var syncEnabledNum: NSNumber? {
        get {
            return syncEnabled as NSNumber?
        }
    }
    public var syncScheduleType: SyncScheduleType
    public var syncInterval: Int?
    public var syncIntervalNum: NSNumber? {
        get {
            return syncInterval as NSNumber?
        }
    }
    public var createdAt: Date
    public var name: String?
    public var _id: UUID?

    public init(enabled: Bool? = nil, inboxId: UUID, emailAddress: String? = nil, userId: UUID, syncEnabled: Bool? = nil, syncScheduleType: SyncScheduleType, syncInterval: Int? = nil, createdAt: Date, name: String? = nil, _id: UUID? = nil) {
        self.enabled = enabled
        self.inboxId = inboxId
        self.emailAddress = emailAddress
        self.userId = userId
        self.syncEnabled = syncEnabled
        self.syncScheduleType = syncScheduleType
        self.syncInterval = syncInterval
        self.createdAt = createdAt
        self.name = name
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case inboxId
        case emailAddress
        case userId
        case syncEnabled
        case syncScheduleType
        case syncInterval
        case createdAt
        case name
        case _id = "id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(syncEnabled, forKey: .syncEnabled)
        try container.encode(syncScheduleType, forKey: .syncScheduleType)
        try container.encodeIfPresent(syncInterval, forKey: .syncInterval)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_id, forKey: ._id)
    }
}

