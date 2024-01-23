//
// PageInboxForwarderDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Paginated inbox forwarder results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. */
@objc public class PageInboxForwarderDto: NSObject, Codable, JSONEncodable {

    public var content: [InboxForwarderDto]?
    public var pageable: PageableObject?
    public var total: Int64?
    public var totalNum: NSNumber? {
        get {
            return total as NSNumber?
        }
    }
    public var totalElements: Int64?
    public var totalElementsNum: NSNumber? {
        get {
            return totalElements as NSNumber?
        }
    }
    public var totalPages: Int?
    public var totalPagesNum: NSNumber? {
        get {
            return totalPages as NSNumber?
        }
    }
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
    public var first: Bool?
    public var firstNum: NSNumber? {
        get {
            return first as NSNumber?
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
    public var empty: Bool?
    public var emptyNum: NSNumber? {
        get {
            return empty as NSNumber?
        }
    }

    public init(content: [InboxForwarderDto]? = nil, pageable: PageableObject? = nil, total: Int64? = nil, totalElements: Int64? = nil, totalPages: Int? = nil, last: Bool? = nil, numberOfElements: Int? = nil, first: Bool? = nil, size: Int? = nil, number: Int? = nil, sort: SortObject? = nil, empty: Bool? = nil) {
        self.content = content
        self.pageable = pageable
        self.total = total
        self.totalElements = totalElements
        self.totalPages = totalPages
        self.last = last
        self.numberOfElements = numberOfElements
        self.first = first
        self.size = size
        self.number = number
        self.sort = sort
        self.empty = empty
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case pageable
        case total
        case totalElements
        case totalPages
        case last
        case numberOfElements
        case first
        case size
        case number
        case sort
        case empty
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(pageable, forKey: .pageable)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(totalElements, forKey: .totalElements)
        try container.encodeIfPresent(totalPages, forKey: .totalPages)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(numberOfElements, forKey: .numberOfElements)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(empty, forKey: .empty)
    }
}

