//
// PageInboxProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



@objc public class PageInboxProjection: NSObject, Codable { 

    public var content: [InboxProjection]?
    public var empty: Bool?
    public var emptyNum: NSNumber? {
        get {
            return empty as NSNumber?
        }
    }
    public var first: Bool?
    public var firstNum: NSNumber? {
        get {
            return first as NSNumber?
        }
    }
    public var last: Bool?
    public var lastNum: NSNumber? {
        get {
            return last as NSNumber?
        }
    }
    public var number: Int?
    public var numberNum: NSNumber? {
        get {
            return number as NSNumber?
        }
    }
    public var numberOfElements: Int?
    public var numberOfElementsNum: NSNumber? {
        get {
            return numberOfElements as NSNumber?
        }
    }
    public var pageable: Pageable?
    public var size: Int?
    public var sizeNum: NSNumber? {
        get {
            return size as NSNumber?
        }
    }
    public var sort: Sort?
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

    public init(content: [InboxProjection]?, empty: Bool?, first: Bool?, last: Bool?, number: Int?, numberOfElements: Int?, pageable: Pageable?, size: Int?, sort: Sort?, totalElements: Int64?, totalPages: Int?) {
        self.content = content
        self.empty = empty
        self.first = first
        self.last = last
        self.number = number
        self.numberOfElements = numberOfElements
        self.pageable = pageable
        self.size = size
        self.sort = sort
        self.totalElements = totalElements
        self.totalPages = totalPages
    }

}
