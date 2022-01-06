//
// ExportOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Options for exporting user data */
@objc public class ExportOptions: NSObject, Codable {

    public enum OutputFormat: String, Codable, CaseIterable {
        case _default = "CSV_DEFAULT"
        case excel = "CSV_EXCEL"
    }
    public var outputFormat: OutputFormat
    public var excludePreviouslyExported: Bool?
    public var excludePreviouslyExportedNum: NSNumber? {
        get {
            return excludePreviouslyExported as NSNumber?
        }
    }
    public var createdEarliestTime: Date?
    public var createdOldestTime: Date?
    public var filter: String?
    public var listSeparatorToken: String?

    public init(outputFormat: OutputFormat, excludePreviouslyExported: Bool? = nil, createdEarliestTime: Date? = nil, createdOldestTime: Date? = nil, filter: String? = nil, listSeparatorToken: String? = nil) {
        self.outputFormat = outputFormat
        self.excludePreviouslyExported = excludePreviouslyExported
        self.createdEarliestTime = createdEarliestTime
        self.createdOldestTime = createdOldestTime
        self.filter = filter
        self.listSeparatorToken = listSeparatorToken
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case outputFormat
        case excludePreviouslyExported
        case createdEarliestTime
        case createdOldestTime
        case filter
        case listSeparatorToken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(outputFormat, forKey: .outputFormat)
        try container.encodeIfPresent(excludePreviouslyExported, forKey: .excludePreviouslyExported)
        try container.encodeIfPresent(createdEarliestTime, forKey: .createdEarliestTime)
        try container.encodeIfPresent(createdOldestTime, forKey: .createdOldestTime)
        try container.encodeIfPresent(filter, forKey: .filter)
        try container.encodeIfPresent(listSeparatorToken, forKey: .listSeparatorToken)
    }



}
