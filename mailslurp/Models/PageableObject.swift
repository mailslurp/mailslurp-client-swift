//
// PageableObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct PageableObject: Codable, Hashable {

    public var offset: Int64?
    public var sort: Sort?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var paged: Bool?
    public var unpaged: Bool?

    public init(offset: Int64? = nil, sort: Sort? = nil, pageNumber: Int? = nil, pageSize: Int? = nil, paged: Bool? = nil, unpaged: Bool? = nil) {
        self.offset = offset
        self.sort = sort
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.paged = paged
        self.unpaged = unpaged
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case offset
        case sort
        case pageNumber
        case pageSize
        case paged
        case unpaged
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(pageNumber, forKey: .pageNumber)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(paged, forKey: .paged)
        try container.encodeIfPresent(unpaged, forKey: .unpaged)
    }



}
