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

import XCTest
@testable import AsposePdfCloud

class DateConvertTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDateConvertNotValid() {
        let strDate: String  = "0001-01-01T00:00:00"
        do {
            let date: Date? = try CodableHelper.decodeDate(strDate)
            XCTAssertNil(date)
        } catch {
            XCTFail("error testDateConvertEmpty")
        }
    }
    
    func testDateConvertEmpty() {
        let strDate: String  = ""
        do {
            let date: Date? = try CodableHelper.decodeDate(strDate)
            XCTAssertNil(date)
        } catch {
            XCTFail("error testDateConvertEmpty")
        }
    }
    
    func testDateConvertValid() {
        let strDate: String  = "2019-09-02T11:21:13+00:00"
        
        var dateComponents = DateComponents()
        dateComponents.year = 2019
        dateComponents.month = 9
        dateComponents.day = 2
        dateComponents.timeZone = TimeZone(abbreviation: "GMT")
        dateComponents.hour = 11
        dateComponents.minute = 21
        dateComponents.second = 13
        
        let userCalendar = Calendar.current // user calendar
        let expectedDate = userCalendar.date(from: dateComponents)
        
        do {
            let date: Date? = try CodableHelper.decodeDate(strDate)
            XCTAssertEqual(date, expectedDate)
        } catch {
            XCTFail("error testDateConvertEmpty")
        }
    }
}
