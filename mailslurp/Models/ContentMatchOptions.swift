//
// ContentMatchOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Options for matching content using regex patterns based on Java Pattern syntax */
@objc public class ContentMatchOptions: NSObject, Codable {

    /** Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `[&#39;code is: 123456&#39;, &#39;123456&#39;]` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. */
    public var pattern: String

    public init(pattern: String) {
        self.pattern = pattern
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pattern
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pattern, forKey: .pattern)
    }



}
