//
// CreateConnectorOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class CreateConnectorOptions: NSObject, Codable, JSONEncodable {

    public enum ConnectorType: String, Codable, CaseIterable {
        case imap = "IMAP"
    }
    public enum ConnectorAuthType: String, Codable, CaseIterable {
        case plainText = "PLAIN_TEXT"
    }
    public enum SyncScheduleType: String, Codable, CaseIterable {
        case interval = "INTERVAL"
    }
    public var connectorType: ConnectorType
    public var connectorAuthType: ConnectorAuthType
    public var imapSettings: CreateConnectorImapOptions?
    public var inboxId: UUID?
    public var syncEnabled: Bool
    public var syncScheduleType: SyncScheduleType
    public var syncInterval: Int?
    public var syncIntervalNum: NSNumber? {
        get {
            return syncInterval as NSNumber?
        }
    }

    public init(connectorType: ConnectorType, connectorAuthType: ConnectorAuthType, imapSettings: CreateConnectorImapOptions? = nil, inboxId: UUID? = nil, syncEnabled: Bool, syncScheduleType: SyncScheduleType, syncInterval: Int? = nil) {
        self.connectorType = connectorType
        self.connectorAuthType = connectorAuthType
        self.imapSettings = imapSettings
        self.inboxId = inboxId
        self.syncEnabled = syncEnabled
        self.syncScheduleType = syncScheduleType
        self.syncInterval = syncInterval
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case connectorType
        case connectorAuthType
        case imapSettings
        case inboxId
        case syncEnabled
        case syncScheduleType
        case syncInterval
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(connectorType, forKey: .connectorType)
        try container.encode(connectorAuthType, forKey: .connectorAuthType)
        try container.encodeIfPresent(imapSettings, forKey: .imapSettings)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encode(syncEnabled, forKey: .syncEnabled)
        try container.encode(syncScheduleType, forKey: .syncScheduleType)
        try container.encodeIfPresent(syncInterval, forKey: .syncInterval)
    }
}
