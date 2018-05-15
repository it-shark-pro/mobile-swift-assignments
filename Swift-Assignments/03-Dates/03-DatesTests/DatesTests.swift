
import XCTest
@testable import _3_Dates

final class DatesTests: XCTestCase {
    
    var sut: DatesFunctions!
    
    override func setUp() {
        super.setUp()
        sut = DatesFunctions()
    }
    
    func testDateFromRFC2822() {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, dd MM yyyy HH:mm:ss"
        
        XCTAssertEqual(sut.date(from: "December 17, 1995 03:24:00"), formatter.date(from: "December 17, 1995 03:24:00"))
        XCTAssertEqual(sut.date(from: "Tue, 26 Jan 2016 13:48:02 GMT"), formatter.date(from: "Tue, 26 Jan 2016 13:48:02 GMT"))
        XCTAssertEqual(sut.date(from: "Sun, 17 May 1998 03:00:00 GMT+01"), formatter.date(from: "Sun, 17 May 1998 03:00:00 GMT+01"))
    }
    
    func testTimeIntervalFromISO8601() {
        let formatter = ISO8601DateFormatter()
        
        XCTAssertEqual(sut.timeInterval(from: "2016-01-19T16:07:37+00:00"), formatter.date(from: "2016-01-19T16:07:37+00:00")?.timeIntervalSince1970)
        XCTAssertEqual(sut.timeInterval(from: "2016-01-19T08:07:37Z"), formatter.date(from: "2016-01-19T08:07:37Z")?.timeIntervalSince1970)
    }
    
    func testIsDateLeapYear() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        
        XCTAssertFalse(sut.isDateLeapYear(formatter.date(from: "1900")!))
        XCTAssertTrue(sut.isDateLeapYear(formatter.date(from: "2000")!))
        XCTAssertFalse(sut.isDateLeapYear(formatter.date(from: "2001")!))
        XCTAssertTrue(sut.isDateLeapYear(formatter.date(from: "2012")!))
        XCTAssertFalse(sut.isDateLeapYear(formatter.date(from: "2015")!))
    }
       
    func testTimeSpan() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        
        XCTAssertEqual(sut.timeSpan(from: formatter.date(from: "01/01/2000 10:00:00")!, to: formatter.date(from: "01/01/2000 11:00:00")!), "01:00:00")
        XCTAssertEqual(sut.timeSpan(from: formatter.date(from: "01/01/2000 10:00:00")!, to: formatter.date(from: "01/01/2000 10:30:00")!), "00:30:00")
        XCTAssertEqual(sut.timeSpan(from: formatter.date(from: "01/01/2000 10:00:00")!, to: formatter.date(from: "01/01/2000 10:00:20")!), "00:00:20")
        XCTAssertEqual(sut.timeSpan(from: formatter.date(from: "01/01/2000 10:00:00")!, to: formatter.date(from: "01/01/2000 15:20:10")!), "05:20:10")
    }
    
    func testAngleBetweenClockHands() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"

        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/02/2016 00:00")!), 0)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 03:00")!), .pi / 2)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 15:00")!), .pi / 2)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 06:00")!), .pi)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 18:00")!), .pi)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 09:00")!), .pi / 2)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 21:00")!), .pi / 2)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 14:20")!), 0.8726646259971648)
        XCTAssertEqual(sut.angleBetweebClockHands(date: formatter.date(from: "05/03/2016 23:55")!), 0.4799655442984406)
    }
}
