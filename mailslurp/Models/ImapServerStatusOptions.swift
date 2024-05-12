//
// ImapServerStatusOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ImapServerStatusOptions: NSObject, Codable, JSONEncodable {

    public enum StatusItems: String, Codable, CaseIterable {
        case messages = "MESSAGES"
        case recent = "RECENT"
        case uidnext = "UIDNEXT"
        case uidvalidity = "UIDVALIDITY"
        case unseen = "UNSEEN"
        case appendlimit = "APPENDLIMIT"
    }
    public var name: String?
    public var statusItems: [StatusItems]?

    public init(name: String? = nil, statusItems: [StatusItems]? = nil) {
        self.name = name
        self.statusItems = statusItems
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case statusItems
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(statusItems, forKey: .statusItems)
    }
}

