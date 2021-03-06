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


/** Represents text paragraphs as multiline text object. */

open class Paragraph: Codable {

    /** Line spacing mode. */
    public var lineSpacing: LineSpacing?
    /** Word wrap mode. */
    public var wrapMode: WrapMode?
    /** Horizontal alignment for the text inside paragraph&#39;s rectangle. */
    public var horizontalAlignment: TextHorizontalAlignment?
    /** Left margin. */
    public var leftMargin: Double?
    /** Right margin. */
    public var rightMargin: Double?
    /** Top margin. */
    public var topMargin: Double?
    /** Bottom margin. */
    public var bottomMargin: Double?
    /** Rectangle of the paragraph. */
    public var rectangle: Rectangle?
    /** Rotation angle in degrees. */
    public var rotation: Double?
    /** Subsequent lines indent value. */
    public var subsequentLinesIndent: Double?
    /** Vertical alignment for the text inside paragraph&#39;s rectangle */
    public var verticalAlignment: VerticalAlignment?
    /** An array of text lines. */
    public var lines: [TextLine]

        
    
    public init(lineSpacing: LineSpacing?, wrapMode: WrapMode?, horizontalAlignment: TextHorizontalAlignment?, leftMargin: Double?, rightMargin: Double?, topMargin: Double?, bottomMargin: Double?, rectangle: Rectangle?, rotation: Double?, subsequentLinesIndent: Double?, verticalAlignment: VerticalAlignment?, lines: [TextLine]) {
        self.lineSpacing = lineSpacing
        self.wrapMode = wrapMode
        self.horizontalAlignment = horizontalAlignment
        self.leftMargin = leftMargin
        self.rightMargin = rightMargin
        self.topMargin = topMargin
        self.bottomMargin = bottomMargin
        self.rectangle = rectangle
        self.rotation = rotation
        self.subsequentLinesIndent = subsequentLinesIndent
        self.verticalAlignment = verticalAlignment
        self.lines = lines
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(lineSpacing, forKey: "LineSpacing")
        try container.encodeIfPresent(wrapMode, forKey: "WrapMode")
        try container.encodeIfPresent(horizontalAlignment, forKey: "HorizontalAlignment")
        try container.encodeIfPresent(leftMargin, forKey: "LeftMargin")
        try container.encodeIfPresent(rightMargin, forKey: "RightMargin")
        try container.encodeIfPresent(topMargin, forKey: "TopMargin")
        try container.encodeIfPresent(bottomMargin, forKey: "BottomMargin")
        try container.encodeIfPresent(rectangle, forKey: "Rectangle")
        try container.encodeIfPresent(rotation, forKey: "Rotation")
        try container.encodeIfPresent(subsequentLinesIndent, forKey: "SubsequentLinesIndent")
        try container.encodeIfPresent(verticalAlignment, forKey: "VerticalAlignment")
        try container.encode(lines, forKey: "Lines")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        lineSpacing = try container.decodeIfPresent(LineSpacing.self, forKey: "LineSpacing")
        wrapMode = try container.decodeIfPresent(WrapMode.self, forKey: "WrapMode")
        horizontalAlignment = try container.decodeIfPresent(TextHorizontalAlignment.self, forKey: "HorizontalAlignment")
        leftMargin = try container.decodeIfPresent(Double.self, forKey: "LeftMargin")
        rightMargin = try container.decodeIfPresent(Double.self, forKey: "RightMargin")
        topMargin = try container.decodeIfPresent(Double.self, forKey: "TopMargin")
        bottomMargin = try container.decodeIfPresent(Double.self, forKey: "BottomMargin")
        rectangle = try container.decodeIfPresent(Rectangle.self, forKey: "Rectangle")
        rotation = try container.decodeIfPresent(Double.self, forKey: "Rotation")
        subsequentLinesIndent = try container.decodeIfPresent(Double.self, forKey: "SubsequentLinesIndent")
        verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: "VerticalAlignment")
        lines = try container.decode([TextLine].self, forKey: "Lines")
    }
}

