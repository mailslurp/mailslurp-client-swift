//
// ContentMatchOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Options for matching content using regex patterns based on Java Pattern syntax */
@objc public class ContentMatchOptions: NSObject, Codable {

    /** Java style regex pattern. Do not include the typical &#x60;/&#x60; at start or end of regex in some languages. Given an example &#x60;your code is: 12345&#x60; the pattern to extract match looks like &#x60;code is: (\\d{6})&#x60;. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: &#x60;[&#39;code is: 123456&#39;, &#39;123456&#39;]&#x60; See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. */
    public var pattern: String?

    public init(pattern: String? = nil) {
        self.pattern = pattern
    }

}
