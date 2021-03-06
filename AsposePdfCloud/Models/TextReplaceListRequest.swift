/**
 *
 *   Copyright (c) 2020 Aspose.PDF Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */




import Foundation


/** Multiple text replacements request. */

open class TextReplaceListRequest: Codable {

    /** A list of text replacement settings. */
    public var textReplaces: [TextReplace]
    /** Name of font to use if requested font is not embedded into document. */
    public var defaultFont: String?
    /** The index of first match to be replaced. */
    public var startIndex: Int?
    /** The number of matches to be replaced. */
    public var countReplace: Int?

        
    
    public init(textReplaces: [TextReplace], defaultFont: String?, startIndex: Int?, countReplace: Int?) {
        self.textReplaces = textReplaces
        self.defaultFont = defaultFont
        self.startIndex = startIndex
        self.countReplace = countReplace
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(textReplaces, forKey: "TextReplaces")
        try container.encodeIfPresent(defaultFont, forKey: "DefaultFont")
        try container.encodeIfPresent(startIndex, forKey: "StartIndex")
        try container.encodeIfPresent(countReplace, forKey: "CountReplace")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        textReplaces = try container.decode([TextReplace].self, forKey: "TextReplaces")
        defaultFont = try container.decodeIfPresent(String.self, forKey: "DefaultFont")
        startIndex = try container.decodeIfPresent(Int.self, forKey: "StartIndex")
        countReplace = try container.decodeIfPresent(Int.self, forKey: "CountReplace")
    }
}

