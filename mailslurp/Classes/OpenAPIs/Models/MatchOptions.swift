//
// MatchOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Optional filter for matching emails based on fields. For instance filter results to only include emails whose &#x60;SUBJECT&#x60; value does &#x60;CONTAIN&#x60; given match value. An example payload would be &#x60;{ matches: [{ field: &#39;SUBJECT&#39;, should: &#39;CONTAIN&#39;, value: &#39;Welcome&#39; }] }&#x60;. You can also pass conditions such as &#x60;HAS_ATTACHMENT&#x60;. If you wish to extract regex matches inside the email content see the &#x60;getEmailContentMatch&#x60; method in the EmailController. */
@objc public class MatchOptions: NSObject, Codable {

    /** Zero or more conditions such as &#x60;{ condition: &#39;HAS_ATTACHMENTS&#39;, value: &#39;TRUE&#39; }&#x60;. Note the values are the strings &#x60;TRUE|FALSE&#x60; not booleans. */
    public var conditions: [ConditionOption]?
    /** Zero or more match options such as &#x60;{ field: &#39;SUBJECT&#39;, should: &#39;CONTAIN&#39;, value: &#39;Welcome&#39; }&#x60;. Options are additive so if one does not match the email is excluded from results */
    public var matches: [MatchOption]?

    public init(conditions: [ConditionOption]? = nil, matches: [MatchOption]? = nil) {
        self.conditions = conditions
        self.matches = matches
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case conditions
        case matches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(conditions, forKey: .conditions)
        try container.encodeIfPresent(matches, forKey: .matches)
    }



}
