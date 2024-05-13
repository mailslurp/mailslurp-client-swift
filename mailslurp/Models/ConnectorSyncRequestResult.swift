//
// ConnectorSyncRequestResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ConnectorSyncRequestResult: NSObject, Codable, JSONEncodable {

    public var syncResult: ConnectorSyncResult?
    public var exception: ConnectorSyncRequestResultException?
    public var eventId: UUID?

    public init(syncResult: ConnectorSyncResult? = nil, exception: ConnectorSyncRequestResultException? = nil, eventId: UUID? = nil) {
        self.syncResult = syncResult
        self.exception = exception
        self.eventId = eventId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case syncResult
        case exception
        case eventId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(syncResult, forKey: .syncResult)
        try container.encodeIfPresent(exception, forKey: .exception)
        try container.encodeIfPresent(eventId, forKey: .eventId)
    }
}

