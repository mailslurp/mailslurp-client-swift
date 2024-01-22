//
// GenerateMtaStsRecordOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class GenerateMtaStsRecordOptions: NSObject, Codable, JSONEncodable {

    public enum Version: String, Codable, CaseIterable {
        case stsv1 = "STSv1"
    }
    public enum Mode: String, Codable, CaseIterable {
        case testing = "TESTING"
        case enforce = "ENFORCE"
        case _none = "NONE"
    }
    public var host: String
    public var version: Version
    public var mode: Mode
    public var ttl: Int
    public var maxAgeSeconds: Int
    public var mxRecords: [String]

    public init(host: String, version: Version, mode: Mode, ttl: Int, maxAgeSeconds: Int, mxRecords: [String]) {
        self.host = host
        self.version = version
        self.mode = mode
        self.ttl = ttl
        self.maxAgeSeconds = maxAgeSeconds
        self.mxRecords = mxRecords
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case host
        case version
        case mode
        case ttl
        case maxAgeSeconds
        case mxRecords
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(host, forKey: .host)
        try container.encode(version, forKey: .version)
        try container.encode(mode, forKey: .mode)
        try container.encode(ttl, forKey: .ttl)
        try container.encode(maxAgeSeconds, forKey: .maxAgeSeconds)
        try container.encode(mxRecords, forKey: .mxRecords)
    }
}
