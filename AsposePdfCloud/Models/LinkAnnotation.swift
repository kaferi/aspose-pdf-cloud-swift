//
// LinkAnnotation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Provides link to linkAnnotation. */

open class LinkAnnotation: LinkElement {

    public var actionType: LinkActionType?
    public var action: String?
    public var highlighting: LinkHighlightingMode?
    public var color: Color?


    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(actionType, forKey: "ActionType")
        try container.encodeIfPresent(action, forKey: "Action")
        try container.encodeIfPresent(highlighting, forKey: "Highlighting")
        try container.encodeIfPresent(color, forKey: "Color")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        actionType = try container.decodeIfPresent(LinkActionType.self, forKey: "ActionType")
        action = try container.decodeIfPresent(String.self, forKey: "Action")
        highlighting = try container.decodeIfPresent(LinkHighlightingMode.self, forKey: "Highlighting")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        try super.init(from: decoder)
    }
}

