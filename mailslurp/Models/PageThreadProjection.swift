//
// PageThreadProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Paginated email projection results. EmailProjections and EmailPreviews are essentially the same but have legacy naming issues. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full email entity use the projection ID with individual method calls. For emails there are several methods for fetching message bodies and attachments. */
public struct PageThreadProjection: Codable, Hashable {

    public var content: [ThreadProjection]?
    public var pageable: PageableObject?
    public var total: Int64?
    public var last: Bool?
    public var totalPages: Int?
    public var totalElements: Int64?
    public var size: Int?
    public var number: Int?
    public var sort: Sort?
    public var first: Bool?
    public var numberOfElements: Int?
    public var empty: Bool?

    public init(content: [ThreadProjection]? = nil, pageable: PageableObject? = nil, total: Int64? = nil, last: Bool? = nil, totalPages: Int? = nil, totalElements: Int64? = nil, size: Int? = nil, number: Int? = nil, sort: Sort? = nil, first: Bool? = nil, numberOfElements: Int? = nil, empty: Bool? = nil) {
        self.content = content
        self.pageable = pageable
        self.total = total
        self.last = last
        self.totalPages = totalPages
        self.totalElements = totalElements
        self.size = size
        self.number = number
        self.sort = sort
        self.first = first
        self.numberOfElements = numberOfElements
        self.empty = empty
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case pageable
        case total
        case last
        case totalPages
        case totalElements
        case size
        case number
        case sort
        case first
        case numberOfElements
        case empty
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(pageable, forKey: .pageable)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(totalPages, forKey: .totalPages)
        try container.encodeIfPresent(totalElements, forKey: .totalElements)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(numberOfElements, forKey: .numberOfElements)
        try container.encodeIfPresent(empty, forKey: .empty)
    }



}
