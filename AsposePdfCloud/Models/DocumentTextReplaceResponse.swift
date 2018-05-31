//
// DocumentTextReplaceResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class DocumentTextReplaceResponse: TextReplaceResponse {

    public var document: Document?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(document, forKey: "Document")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        document = try container.decodeIfPresent(Document.self, forKey: "Document")
        try super.init(from: decoder)
    }
}

