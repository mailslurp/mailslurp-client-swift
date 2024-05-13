//
// PageContactProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Paginated contact results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. */
@objc public class PageContactProjection: NSObject, Codable, JSONEncodable {

    public var content: [ContactProjection]?
    public var pageable: PageableObject?
    public var totalPages: Int
    public var totalElements: Int64
    public var last: Bool?
    public var lastNum: NSNumber? {
        get {
            return last as NSNumber?
        }
    }
    public var numberOfElements: Int?
    public var numberOfElementsNum: NSNumber? {
        get {
            return numberOfElements as NSNumber?
        }
    }
    public var size: Int?
    public var sizeNum: NSNumber? {
        get {
            return size as NSNumber?
        }
    }
    public var number: Int?
    public var numberNum: NSNumber? {
        get {
            return number as NSNumber?
        }
    }
    public var sort: SortObject?
    public var first: Bool?
    public var firstNum: NSNumber? {
        get {
            return first as NSNumber?
        }
    }
    public var empty: Bool?
    public var emptyNum: NSNumber? {
        get {
            return empty as NSNumber?
        }
    }

    public init(content: [ContactProjection]? = nil, pageable: PageableObject? = nil, totalPages: Int, totalElements: Int64, last: Bool? = nil, numberOfElements: Int? = nil, size: Int? = nil, number: Int? = nil, sort: SortObject? = nil, first: Bool? = nil, empty: Bool? = nil) {
        self.content = content
        self.pageable = pageable
        self.totalPages = totalPages
        self.totalElements = totalElements
        self.last = last
        self.numberOfElements = numberOfElements
        self.size = size
        self.number = number
        self.sort = sort
        self.first = first
        self.empty = empty
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case pageable
        case totalPages
        case totalElements
        case last
        case numberOfElements
        case size
        case number
        case sort
        case first
        case empty
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(pageable, forKey: .pageable)
        try container.encode(totalPages, forKey: .totalPages)
        try container.encode(totalElements, forKey: .totalElements)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(numberOfElements, forKey: .numberOfElements)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(empty, forKey: .empty)
    }
}

