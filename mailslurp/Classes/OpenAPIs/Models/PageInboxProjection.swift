//
// PageInboxProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable
import AnyCodable

/** Paginated inbox results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. */
@objc public class PageInboxProjection: NSObject, Codable {

    public var content: [InboxPreview]?
    public var pageable: Pageable?
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
    public var sort: Sort?
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
    public var empty: Bool?
    public var emptyNum: NSNumber? {
        get {
            return empty as NSNumber?
        }
    }

    public init(content: [InboxPreview]? = nil, pageable: Pageable? = nil, totalElements: Int64? = nil, totalPages: Int? = nil, last: Bool? = nil, size: Int? = nil, number: Int? = nil, sort: Sort? = nil, numberOfElements: Int? = nil, first: Bool? = nil, empty: Bool? = nil) {
        self.content = content
        self.pageable = pageable
        self.totalElements = totalElements
        self.totalPages = totalPages
        self.last = last
        self.size = size
        self.number = number
        self.sort = sort
        self.numberOfElements = numberOfElements
        self.first = first
        self.empty = empty
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case pageable
        case totalElements
        case totalPages
        case last
        case size
        case number
        case sort
        case numberOfElements
        case first
        case empty
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(pageable, forKey: .pageable)
        try container.encodeIfPresent(totalElements, forKey: .totalElements)
        try container.encodeIfPresent(totalPages, forKey: .totalPages)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(numberOfElements, forKey: .numberOfElements)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(empty, forKey: .empty)
    }



}
