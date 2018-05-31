//
// PageWordCount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Page words count. */

open class PageWordCount: Codable {

    /** Page number. */
    public var pageNumber: Int
    /** Number of words at the page. */
    public var count: Int


    
    public init(pageNumber: Int, count: Int) {
        self.pageNumber = pageNumber
        self.count = count
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(pageNumber, forKey: "PageNumber")
        try container.encode(count, forKey: "Count")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        pageNumber = try container.decode(Int.self, forKey: "PageNumber")
        count = try container.decode(Int.self, forKey: "Count")
    }
}

