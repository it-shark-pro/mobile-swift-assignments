
import XCTest
@testable import _2_Numbers

final class NumbersTests: XCTestCase {
    
    var sut: NumbersFunctions!
    
    override func setUp() {
        super.setUp()
        sut = NumbersFunctions()
    }
 
    func testRectArea() {
        XCTAssertEqual(sut.rectArea(width: 5, height: 10), 50)
        XCTAssertEqual(sut.rectArea(width: 5, height: 5), 25)
    }
    
    func testCircumference() {
        XCTAssertEqual(sut.circumference(radius: 5), 31.41592653589793)
        XCTAssertEqual(sut.circumference(radius: 3.14), 19.729201864543903)
        XCTAssertEqual(sut.circumference(radius: 0), 0)
    }
    
    func testAverage() {
        XCTAssertEqual(sut.average(5, 5), 5)
        XCTAssertEqual(sut.average(10, 0), 5)
        XCTAssertEqual(sut.average(-3, 3), 0)
    }
    
    func testDistance() {
        XCTAssertEqual(sut.distance(from: CGPoint(x: 0, y: 0), to: CGPoint(x: 0, y: 1)), 1)
        XCTAssertEqual(sut.distance(from: CGPoint(x: 0, y: 0), to: CGPoint(x: 1, y: 0)), 1)
        XCTAssertEqual(sut.distance(from: CGPoint(x: -5, y: 0), to: CGPoint(x: 10, y: -10)), 18.027756377319946)
    }
    
    func testLinearEquationRoot() {
        XCTAssertEqual(sut.linearEquationRoot(a: 5, b: -10), 2)
        XCTAssertEqual(sut.linearEquationRoot(a: 1, b: 8), -8)
        XCTAssertEqual(sut.linearEquationRoot(a: 5, b: 0), 0)
    }
    
    func testAngle() {
        XCTAssertEqual(sut.angle(between: CGVector(dx: 1, dy: 0), and: CGVector(dx: 0, dy: 1)), .pi / 2)
        XCTAssertEqual(sut.angle(between: CGVector(dx: 0, dy: 1), and: CGVector(dx: 0, dy: -1)), .pi)
        XCTAssertEqual(sut.angle(between: CGVector(dx: 0, dy: -1), and: CGVector(dx: 1, dy: 0)), .pi / 2)
        XCTAssertEqual(sut.angle(between: CGVector(dx: 0, dy: 1), and: CGVector(dx: 0, dy: 1)), 0)
        XCTAssertEqual(sut.angle(between: CGVector(dx: 0, dy: 1), and: CGVector(dx: 1, dy: 2)), 0)
    }
       
    func testLastDigit() {
        XCTAssertEqual(sut.lastDigit(from: 100), 0)
        XCTAssertEqual(sut.lastDigit(from: 37), 7)
        XCTAssertEqual(sut.lastDigit(from: 5), 5)
        XCTAssertEqual(sut.lastDigit(from: 0), 0)
    }
    
    func testNumberFromString() {
        XCTAssertEqual(sut.number(from: "100"), 100)
        XCTAssertEqual(sut.number(from: "37"), 37)
        XCTAssertEqual(sut.number(from: "-525.5"), -525.5)
    }
    
    func testParallelepipedDiagonal() {
        XCTAssertEqual(sut.parallelepipedDiagonal(baseArea: CGSize(width: 1, height: 1), height: 1), 1.7320508075688772)
        XCTAssertEqual(sut.parallelepipedDiagonal(baseArea: CGSize(width: 3, height: 3), height: 3), 5.196152422706632)
        XCTAssertEqual(sut.parallelepipedDiagonal(baseArea: CGSize(width: 1, height: 2), height: 3), 3.741657386773941)
    }
       
    func testRoundNumberToPowerOf10() {
        XCTAssertEqual(sut.roundNumber(1234, toPowerOf10: 0), 1234)
        XCTAssertEqual(sut.roundNumber(1234, toPowerOf10: 1), 1230)
        XCTAssertEqual(sut.roundNumber(1234, toPowerOf10: 2), 1200)
        XCTAssertEqual(sut.roundNumber(1234, toPowerOf10: 3), 1000)
        
        XCTAssertEqual(sut.roundNumber(1678, toPowerOf10: 0), 1678)
        XCTAssertEqual(sut.roundNumber(1678, toPowerOf10: 1), 1680)
        XCTAssertEqual(sut.roundNumber(1678, toPowerOf10: 2), 1700)
        XCTAssertEqual(sut.roundNumber(1678, toPowerOf10: 3), 2000)
    }
    
    func testIsNumberPrime() {
        XCTAssertTrue(sut.isNumberPrime(2))
        XCTAssertTrue(sut.isNumberPrime(3))
        XCTAssertFalse(sut.isNumberPrime(4))
        XCTAssertTrue(sut.isNumberPrime(5))
        XCTAssertFalse(sut.isNumberPrime(6))
        XCTAssertTrue(sut.isNumberPrime(7))
        XCTAssertFalse(sut.isNumberPrime(8))
        XCTAssertFalse(sut.isNumberPrime(9))
        XCTAssertFalse(sut.isNumberPrime(10))
        XCTAssertTrue(sut.isNumberPrime(11))
        XCTAssertFalse(sut.isNumberPrime(12))
        XCTAssertTrue(sut.isNumberPrime(13))
        XCTAssertFalse(sut.isNumberPrime(16))
        XCTAssertTrue(sut.isNumberPrime(17))
        XCTAssertTrue(sut.isNumberPrime(113))
        XCTAssertFalse(sut.isNumberPrime(119))
    }
}
