//
// ConnectorSyncRequestResultExceptionCause.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ConnectorSyncRequestResultExceptionCause: NSObject, Codable, JSONEncodable {

    public var stackTrace: [ConnectorSyncRequestResultExceptionCauseStackTraceInner]?
    public var message: String?
    public var suppressed: [ConnectorSyncRequestResultExceptionCauseSuppressedInner]?
    public var localizedMessage: String?

    public init(stackTrace: [ConnectorSyncRequestResultExceptionCauseStackTraceInner]? = nil, message: String? = nil, suppressed: [ConnectorSyncRequestResultExceptionCauseSuppressedInner]? = nil, localizedMessage: String? = nil) {
        self.stackTrace = stackTrace
        self.message = message
        self.suppressed = suppressed
        self.localizedMessage = localizedMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stackTrace
        case message
        case suppressed
        case localizedMessage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(stackTrace, forKey: .stackTrace)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(suppressed, forKey: .suppressed)
        try container.encodeIfPresent(localizedMessage, forKey: .localizedMessage)
    }
}

