
import XCTest
@testable import _3_Dates

class DatesTests: XCTestCase {
    
    var dut: DatesFunctions!
    
    override func setUp() {
        super.setUp()
        dut = DatesFunctions()
    }
    
    func testDateFromRFC2822 {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, dd MM yyyy HH:mm:ss"
        
        XCTAssertEqual(dut.date(from: "December 17, 1995 03:24:00"), formatter.date(from: "December 17, 1995 03:24:00"))
        XCTAssertEqual(dut.date(from: "Tue, 26 Jan 2016 13:48:02 GMT"), formatter.date(from: "Tue, 26 Jan 2016 13:48:02 GMT"))
        XCTAssertEqual(dut.date(from: "Sun, 17 May 1998 03:00:00 GMT+01"), formatter.date(from: "Sun, 17 May 1998 03:00:00 GMT+01"))
    }
    
    func testTimeIntervalFromISO8601 {
        let formatter = ISO8601DateFormatter()
        
        XCTAssertEqual(dut.timeInterval(from: "2016-01-19T16:07:37+00:00"), formatter.date(from: "2016-01-19T16:07:37+00:00")?.timeIntervalSince1970)
        XCTAssertEqual(dut.timeInterval(from: "2016-01-19T08:07:37Z"), formatter.date(from: "2016-01-19T08:07:37Z")?.timeIntervalSince1970)
    }
    
    func testIsDateLeapYear() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "1900")), false)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2000")), true)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2001")), false)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2012")), true)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2015")), false)
    }
    
    /**
     * Returns the string represention of the timespan between two dates.
     * The format of output string is "HH:mm:ss.sss"
     *
     * Example:
     *    Date(2000,1,1,10,0,0),  Date(2000,1,1,11,0,0)   => "01:00:00.000"
     *    Date(2000,1,1,10,0,0),  Date(2000,1,1,10,30,0)       => "00:30:00.000"
     *    Date(2000,1,1,10,0,0),  Date(2000,1,1,10,0,20)        => "00:00:20.000"
     *    Date(2000,1,1,10,0,0),  Date(2000,1,1,10,0,0,250)     => "00:00:00.250"
     *    Date(2000,1,1,10,0,0),  Date(2000,1,1,15,20,10,453)   => "05:20:10.453"
     */
    
    func testTimeSpan() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.sss yyyy"
        
        Date.t
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "1900")), formatter.date(from: "10:00:00.000 2000").)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2000")), true)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2001")), false)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2012")), true)
        XCTAssertEqual(dut.isDateLeapYear(formatter.date(from: "2015")), false)
    }
}
