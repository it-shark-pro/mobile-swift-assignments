
import XCTest
@testable import _2_Numbers

class NumbersTests: XCTestCase {
    
    var nut: NumbersFunctions!
    
    override func setUp() {
        super.setUp()
        nut = NumbersFunctions()
    }
 
    func testRectArea() {
        XCTAssertEqual(nut.rectArea(width: 5, height: 10), 50)
        XCTAssertEqual(nut.rectArea(width: 5, height: 5), 25)
    }
    
    func testCircumference() {
        XCTAssertEqual(nut.circumference(radius: 5), 31.41592653589793)
        XCTAssertEqual(nut.circumference(radius: 3.14), 19.729201864543903)
        XCTAssertEqual(nut.circumference(radius: 0), 0)
    }
    
    func testAverage() {
        XCTAssertEqual(nut.average(5, 5), 5)
        XCTAssertEqual(nut.average(10, 0), 5)
        XCTAssertEqual(nut.average(-3, 3), 0)
    }
    
    func testDistance() {
        XCTAssertEqual(nut.distance(from: CGPoint(x: 0, y: 0), to: CGPoint(x: 0, y: 1)), 1)
        XCTAssertEqual(nut.distance(from: CGPoint(x: 0, y: 0), to: CGPoint(x: 1, y: 0)), 1)
        XCTAssertEqual(nut.distance(from: CGPoint(x: -5, y: 0), to: CGPoint(x: 10, y: -10)), 18.027756377319946)
    }
    
    func testLinearEquationRoot() {
        XCTAssertEqual(nut.linearEquationRoot(a: 5, b: -10), 2)
        XCTAssertEqual(nut.linearEquationRoot(a: 1, b: 8), -8)
        XCTAssertEqual(nut.linearEquationRoot(a: 5, b: 0), 0)
    }
    
    func testAngle() {
        XCTAssertEqual(nut.angle(between: CGVector(dx: 1, dy: 0), and: CGVector(dx: 0, dy: 1)), .pi / 2)
        XCTAssertEqual(nut.angle(between: CGVector(dx: 0, dy: 1), and: CGVector(dx: 0, dy: -1)), .pi)
        XCTAssertEqual(nut.angle(between: CGVector(dx: 0, dy: -1), and: CGVector(dx: 1, dy: 0)), .pi / 2)
        XCTAssertEqual(nut.angle(between: CGVector(dx: 0, dy: 1), and: CGVector(dx: 0, dy: 1)), 0)
        XCTAssertEqual(nut.angle(between: CGVector(dx: 0, dy: 1), and: CGVector(dx: 1, dy: 2)), 0)
    }
       
    func testLastDigit() {
        XCTAssertEqual(nut.lastDigit(from: 100), 0)
        XCTAssertEqual(nut.lastDigit(from: 37), 7)
        XCTAssertEqual(nut.lastDigit(from: 5), 5)
        XCTAssertEqual(nut.lastDigit(from: 0), 0)
    }
    
    func testNumberFromString() {
        XCTAssertEqual(nut.number(from: "100"), 100)
        XCTAssertEqual(nut.number(from: "37"), 37)
        XCTAssertEqual(nut.number(from: "-525.5"), -525.5)
    }
    
    func testParallelepipedDiagonal() {
        XCTAssertEqual(nut.parallelepipedDiagonal(baseArea: CGSize(width: 1, height: 1), height: 1), 1.7320508075688772)
        XCTAssertEqual(nut.parallelepipedDiagonal(baseArea: CGSize(width: 3, height: 3), height: 3), 5.196152422706632)
        XCTAssertEqual(nut.parallelepipedDiagonal(baseArea: CGSize(width: 1, height: 2), height: 3), 3.741657386773941)
    }
       
    func testRoundNumberToPowerOf10() {
        XCTAssertEqual(nut.roundNumber(1234, toPowerOf10: 0), 1234)
        XCTAssertEqual(nut.roundNumber(1234, toPowerOf10: 1), 1230)
        XCTAssertEqual(nut.roundNumber(1234, toPowerOf10: 2), 1200)
        XCTAssertEqual(nut.roundNumber(1234, toPowerOf10: 3), 1000)
        
        XCTAssertEqual(nut.roundNumber(1678, toPowerOf10: 0), 1678)
        XCTAssertEqual(nut.roundNumber(1678, toPowerOf10: 1), 1680)
        XCTAssertEqual(nut.roundNumber(1678, toPowerOf10: 2), 1700)
        XCTAssertEqual(nut.roundNumber(1678, toPowerOf10: 3), 2000)
    }
    
    func testIsNumberPrime() {
        XCTAssertEqual(nut.isNumberPrime(4), false)
        XCTAssertEqual(nut.isNumberPrime(5), true)
        XCTAssertEqual(nut.isNumberPrime(6), false)
        XCTAssertEqual(nut.isNumberPrime(7), true)
        XCTAssertEqual(nut.isNumberPrime(11), true)
        XCTAssertEqual(nut.isNumberPrime(12), false)
        XCTAssertEqual(nut.isNumberPrime(16), false)
        XCTAssertEqual(nut.isNumberPrime(17), true)
    }
}
