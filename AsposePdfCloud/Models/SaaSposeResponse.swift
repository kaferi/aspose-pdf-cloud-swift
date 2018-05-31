//
// SaaSposeResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Base class for all responses. */

open class SaaSposeResponse: Codable {

    /** Response status code. */
    public var code: HttpStatusCode
    /** Response status. */
    public var status: String?


    
    public init(code: HttpStatusCode, status: String?) {
        self.code = code
        self.status = status
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(code, forKey: "Code")
        try container.encodeIfPresent(status, forKey: "Status")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        code = try container.decode(HttpStatusCode.self, forKey: "Code")
        status = try container.decodeIfPresent(String.self, forKey: "Status")
    }
}

