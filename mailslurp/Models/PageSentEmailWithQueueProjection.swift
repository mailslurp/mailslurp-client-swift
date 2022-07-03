//
// PageSentEmailWithQueueProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Paginated sent email results for emails sent with queue. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls. */
@objc public class PageSentEmailWithQueueProjection: NSObject, Codable {

    /** Collection of items */
    public var content: [SendWithQueueResult]
    public var pageable: PageableObject?
    public var total: Int64?
    public var totalNum: NSNumber? {
        get {
            return total as NSNumber?
        }
    }
    /** Size of page requested */
    public var size: Int
    /** Page number starting at 0 */
    public var number: Int
    /** Number of items returned */
    public var numberOfElements: Int
    /** Total number of items available for querying */
    public var totalElements: Int64
    /** Total number of pages available */
    public var totalPages: Int
    public var last: Bool?
    public var lastNum: NSNumber? {
        get {
            return last as NSNumber?
        }
    }
    public var sort: Sort?
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

    public init(content: [SendWithQueueResult], pageable: PageableObject? = nil, total: Int64? = nil, size: Int, number: Int, numberOfElements: Int, totalElements: Int64, totalPages: Int, last: Bool? = nil, sort: Sort? = nil, first: Bool? = nil, empty: Bool? = nil) {
        self.content = content
        self.pageable = pageable
        self.total = total
        self.size = size
        self.number = number
        self.numberOfElements = numberOfElements
        self.totalElements = totalElements
        self.totalPages = totalPages
        self.last = last
        self.sort = sort
        self.first = first
        self.empty = empty
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case pageable
        case total
        case size
        case number
        case numberOfElements
        case totalElements
        case totalPages
        case last
        case sort
        case first
        case empty
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(content, forKey: .content)
        try container.encodeIfPresent(pageable, forKey: .pageable)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encode(size, forKey: .size)
        try container.encode(number, forKey: .number)
        try container.encode(numberOfElements, forKey: .numberOfElements)
        try container.encode(totalElements, forKey: .totalElements)
        try container.encode(totalPages, forKey: .totalPages)
        try container.encodeIfPresent(last, forKey: .last)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(empty, forKey: .empty)
    }



}
