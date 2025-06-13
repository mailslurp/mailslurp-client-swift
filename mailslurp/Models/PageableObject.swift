//
// PageableObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objcMembers public class PageableObject: NSObject, Codable, ParameterConvertible {

    public var pageSize: Int?
    public var pageSizeNum: NSNumber? {
        get {
            return pageSize as NSNumber?
        }
    }
    public var paged: Bool?
    public var pagedNum: NSNumber? {
        get {
            return paged as NSNumber?
        }
    }
    public var pageNumber: Int?
    public var pageNumberNum: NSNumber? {
        get {
            return pageNumber as NSNumber?
        }
    }
    public var unpaged: Bool?
    public var unpagedNum: NSNumber? {
        get {
            return unpaged as NSNumber?
        }
    }
    public var offset: Int64?
    public var offsetNum: NSNumber? {
        get {
            return offset as NSNumber?
        }
    }
    public var sort: SortObject?

    public init(pageSize: Int? = nil, paged: Bool? = nil, pageNumber: Int? = nil, unpaged: Bool? = nil, offset: Int64? = nil, sort: SortObject? = nil) {
        self.pageSize = pageSize
        self.paged = paged
        self.pageNumber = pageNumber
        self.unpaged = unpaged
        self.offset = offset
        self.sort = sort
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pageSize
        case paged
        case pageNumber
        case unpaged
        case offset
        case sort
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(paged, forKey: .paged)
        try container.encodeIfPresent(pageNumber, forKey: .pageNumber)
        try container.encodeIfPresent(unpaged, forKey: .unpaged)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(sort, forKey: .sort)
    }
}

