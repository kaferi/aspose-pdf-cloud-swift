/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
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


/** Provides CaretAnnotation. */

open class CaretAnnotation: MarkupAnnotation {

    /** Color of the annotation. */
    public var color: Color?
    /** Gets or sets caret rectangle. */
    public var frame: RectanglePdf?
    /** Gets or sets symbol associated with caret. */
    public var symbol: CaretSymbol?

    
    public init(links: [Link]?, contents: String?, modified: String?, id: String?, flags: [AnnotationFlags]?, name: String?, rect: RectanglePdf?, pageIndex: Int?, zIndex: Int?, horizontalAlignment: HorizontalAlignment?, verticalAlignment: VerticalAlignment?, creationDate: String?, subject: String?, title: String?, richText: String?, color: Color?, frame: RectanglePdf?, symbol: CaretSymbol?) {
        super.init(links: links, contents: contents, modified: modified, id: id, flags: flags, name: name, rect: rect, pageIndex: pageIndex, zIndex: zIndex, horizontalAlignment: horizontalAlignment, verticalAlignment: verticalAlignment, creationDate: creationDate, subject: subject, title: title, richText: richText)
        self.color = color
        self.frame = frame
        self.symbol = symbol
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(frame, forKey: "Frame")
        try container.encodeIfPresent(symbol, forKey: "Symbol")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        frame = try container.decodeIfPresent(RectanglePdf.self, forKey: "Frame")
        symbol = try container.decodeIfPresent(CaretSymbol.self, forKey: "Symbol")
        try super.init(from: decoder)
    }
}
