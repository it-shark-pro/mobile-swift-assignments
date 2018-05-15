
import XCTest
@testable import _5_Conditions_N_Loops

final class ConditionsNLoopsTests: XCTestCase {
    
    var sut: ConditionsNLoopsFunctions!
    
    override func setUp() {
        super.setUp()
        sut = ConditionsNLoopsFunctions()
    }
    
    func testFizzBuzz() {
        [
            1, 2, 4, 7, 8, 11, 13, 14, 16, 17, 19, 22, 23, 26, 28, 29, 31, 32, 34,
            37, 38, 41, 43, 44, 47, 49, 52, 53, 56, 58, 59, 61, 62, 64, 67, 68, 71,
            73, 74, 76, 77, 79, 82, 83, 86, 88, 89, 91, 92, 94, 97, 98
        ].forEach({ XCTAssertEqual(sut.fizzBuzz(for: $0), ConditionsNLoopsFunctions.FizzBuzz.number($0)) })
        
        [
            3, 6, 9, 12, 18, 21, 24, 27,
            33, 36, 39, 42, 48, 51, 54, 57,
            63, 66, 69, 72, 78, 81, 84, 87,
            93, 96, 99
        ].forEach({ XCTAssertEqual(sut.fizzBuzz(for: $0), ConditionsNLoopsFunctions.FizzBuzz.fizz) })
        
        [
            5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80, 85, 95, 100
        ].forEach({ XCTAssertEqual(sut.fizzBuzz(for: $0), ConditionsNLoopsFunctions.FizzBuzz.buzz) })
        
        [
            15, 30, 45, 60, 75, 90
        ].forEach({ XCTAssertEqual(sut.fizzBuzz(for: $0), ConditionsNLoopsFunctions.FizzBuzz.fizzBuzz) })
    }
    
    func testFactorial() {
        XCTAssertEqual(sut.factorial(1), 1)
        XCTAssertEqual(sut.factorial(5), 120)
        XCTAssertEqual(sut.factorial(10), 3628800)
    }
    
    func testSumOfNumbers() {
        XCTAssertEqual(sut.sumOfNumbers(between: 1, and: 2), 3)
        XCTAssertEqual(sut.sumOfNumbers(between: 5, and: 10), 45)
        XCTAssertEqual(sut.sumOfNumbers(between: -1, and: 1), 0)
    }
    
    func testIsTriangleWithSides() {
        XCTAssertFalse(sut.isTriangleWithSides(1, 2, 3))
        XCTAssertTrue(sut.isTriangleWithSides(3, 4, 5))
        XCTAssertFalse(sut.isTriangleWithSides(10, 1, 1))
        XCTAssertTrue(sut.isTriangleWithSides(10, 10, 10))
    }
    
    func testIsCircleContainsPoint() {
        XCTAssertTrue(sut.isCircleContainsPoint(CGPoint(x: 0, y: 0),
                                                circleRadius: 10,
                                                circleCenter: CGPoint(x: 0, y: 0)))

        XCTAssertTrue(sut.isCircleContainsPoint(CGPoint(x: 5, y: 10.99),
                                                circleRadius: 6,
                                                circleCenter: CGPoint(x: 5, y: 5)))

        XCTAssertFalse(sut.isCircleContainsPoint(CGPoint(x: 0, y: 10),
                                                 circleRadius: 10,
                                                 circleCenter: CGPoint(x: 0, y: 0)))

        XCTAssertFalse(sut.isCircleContainsPoint(CGPoint(x: 0, y: 0),
                                                 circleRadius: 6,
                                                 circleCenter: CGPoint(x: 5, y: 5)))

        XCTAssertFalse(sut.isCircleContainsPoint(CGPoint(x: 2.8, y: 2.8),
                                                 circleRadius: 1,
                                                 circleCenter: CGPoint(x: 2, y: 2)))
        
        XCTAssertFalse(sut.isCircleContainsPoint(CGPoint(x: -1, y: -1),
                                                 circleRadius: 4,
                                                 circleCenter: CGPoint(x: 2, y: 2)))
        
        XCTAssertFalse(sut.isCircleContainsPoint(CGPoint(x: 2, y: 6.1),
                                                 circleRadius: 4,
                                                 circleCenter: CGPoint(x: 2, y: 2)))
    }
    
    func testFirstUniqueCharacter() {
        XCTAssertEqual(sut.firstUniqueCharacter(in: "The quick brown fox jumps over the lazy dog"), Character("T"))
        XCTAssertEqual(sut.firstUniqueCharacter(in: "abracadabra"), Character("c"))
        XCTAssertEqual(sut.firstUniqueCharacter(in: "entente"), nil)
    }
    
    func testIntervalString() {
        XCTAssertEqual(sut.intervalString(start: 0, end: 1, isStartIncluded: true, isEndIncluded: true), "[0, 1]")
        XCTAssertEqual(sut.intervalString(start: 0, end: 1, isStartIncluded: true, isEndIncluded: false), "[0, 1)")
        XCTAssertEqual(sut.intervalString(start: 0, end: 1, isStartIncluded: false, isEndIncluded: true), "(0, 1]")
        XCTAssertEqual(sut.intervalString(start: 0, end: 1, isStartIncluded: false, isEndIncluded: false), "(0, 1)")
        XCTAssertEqual(sut.intervalString(start: 5, end: 3, isStartIncluded: true, isEndIncluded: true), "[3, 5]")
    }
    
    func testReversedNumber() {
        XCTAssertEqual(sut.reversedNumber(12345), 54321)
        XCTAssertEqual(sut.reversedNumber(1111), 1111)
        XCTAssertEqual(sut.reversedNumber(87354), 45378)
        XCTAssertEqual(sut.reversedNumber(34143), 34143)
    }
    
    func testIsCreditCardNumber() {
    
        XCTAssertTrue(sut.isCreditCardNumber(79927398713))
        XCTAssertTrue(sut.isCreditCardNumber(4012888888881881))
        XCTAssertTrue(sut.isCreditCardNumber(5123456789012346))
        XCTAssertTrue(sut.isCreditCardNumber(378282246310005))
        XCTAssertTrue(sut.isCreditCardNumber(371449635398431))
        XCTAssertTrue(sut.isCreditCardNumber(378734493671000))
        XCTAssertTrue(sut.isCreditCardNumber(5610591081018250))
        XCTAssertTrue(sut.isCreditCardNumber(30569309025904))
        XCTAssertTrue(sut.isCreditCardNumber(38520000023237))
        XCTAssertTrue(sut.isCreditCardNumber(6011111111111117))
        XCTAssertTrue(sut.isCreditCardNumber(6011000990139424))
        XCTAssertTrue(sut.isCreditCardNumber(3530111333300000))
        XCTAssertTrue(sut.isCreditCardNumber(3566002020360505))
        XCTAssertTrue(sut.isCreditCardNumber(5555555555554444))
        XCTAssertTrue(sut.isCreditCardNumber(5105105105105100))
        XCTAssertTrue(sut.isCreditCardNumber(4111111111111111))
        XCTAssertTrue(sut.isCreditCardNumber(4012888888881881))
        XCTAssertTrue(sut.isCreditCardNumber(4222222222222))
        XCTAssertTrue(sut.isCreditCardNumber(5019717010103742))
        XCTAssertTrue(sut.isCreditCardNumber(6331101999990016))
        XCTAssertTrue(sut.isCreditCardNumber(54891243456789010))

        XCTAssertFalse(sut.isCreditCardNumber(4571234567890111))
        XCTAssertFalse(sut.isCreditCardNumber(5436468789016589))
        XCTAssertFalse(sut.isCreditCardNumber(4916123456789012))
        XCTAssertFalse(sut.isCreditCardNumber(371449635398430))
        XCTAssertFalse(sut.isCreditCardNumber(9112893456789010))
    }
    
    func testDigitalRoot() {
        XCTAssertEqual(sut.digitalRoot(of: 12345), 6)
        XCTAssertEqual(sut.digitalRoot(of: 23456), 2)
        XCTAssertEqual(sut.digitalRoot(of: 10000), 1)
        XCTAssertEqual(sut.digitalRoot(of: 165536), 6)
    }
    
    func testIsBracketsBalanced() {
        XCTAssertTrue(sut.isBracketsBalanced(in: ""))
        XCTAssertTrue(sut.isBracketsBalanced(in: "[]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "[[][][[]]]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "[[][]]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "<>"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "<()>"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "{}"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "()"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "{<>}"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "[{}]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "[{(<()[]{}<>>)}]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "{}<>()[]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "{}<>()[]"))
        XCTAssertTrue(sut.isBracketsBalanced(in: "{<>}{()}[[]](())"))
        
        XCTAssertFalse(sut.isBracketsBalanced(in: "[[]"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "]["))
        XCTAssertFalse(sut.isBracketsBalanced(in: "[][][][][[]"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "[[][]]["))
        XCTAssertFalse(sut.isBracketsBalanced(in: "{)"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "<]"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "(}"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "[{]}"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "{<}>"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "{{[(])}}"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "{}()[]<"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "{"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "("))
        XCTAssertFalse(sut.isBracketsBalanced(in: "["))
        XCTAssertFalse(sut.isBracketsBalanced(in: "({}[]<>(((())))"))
        XCTAssertFalse(sut.isBracketsBalanced(in: "{{[]}}>"))
    }
    
    func testTimespanString() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:00:00")!),
                                           "a few seconds ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:00:30")!),
                       "a few seconds ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:00:45")!),
                       "a few seconds ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:00:46")!),
                       "a minute ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:01:00")!),
                       "a minute ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:01:30")!),
                       "a minute ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:01:31")!),
                       "2 minutes ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:05:30")!),
                       "5 minutes ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:45:00")!),
                       "45 minutes ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 01:45:01")!),
                       "an hour ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 02:00:00")!),
                       "an hour ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 02:30:00")!),
                       "an hour ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 02:30:01")!),
                       "2 hours ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 05:30:00")!),
                       "4 hours ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 05:30:01")!),
                       "5 hours ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 23:00:00")!),
                       "22 hours ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-01 23:00:01")!),
                       "a day ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 01:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-02 01:00:00")!),
                       "a day ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-02 12:00:00")!),
                       "a day ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-02 12:00:01")!),
                       "2 days ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-05 12:00:00")!),
                       "4 days ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-26 00:00:00")!),
                       "25 days ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-01-26 00:00:01")!),
                       "a month ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-02-01 00:00:00")!),
                       "a month ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-02-15 00:00:00")!),
                       "a month ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-02-16 00:00:00")!),
                       "2 months ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-05-20 00:00:00")!),
                       "5 months ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-12-10 00:00:00")!),
                       "11 months ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2000-12-12 00:00:00")!),
                       "a year ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2001-02-15 00:00:01")!),
                       "a year ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2001-06-01 00:00:01")!),
                       "a year ago")
        XCTAssertEqual(sut.timespanString(from: dateFormatter.date(from: "2000-01-01 00:00:00")!,
                                           to: dateFormatter.date(from: "2015-02-15 00:00:01")!),
                       "15 years ago")
    }
    
    func testNaryString() {
        XCTAssertEqual(sut.naryString(from: 1024, radix: 2), "10000000000")
        XCTAssertEqual(sut.naryString(from: 6561, radix: 3), "100000000")
        XCTAssertEqual(sut.naryString(from: 365, radix: 2), "101101101")
        XCTAssertEqual(sut.naryString(from: 365, radix: 3), "111112")
        XCTAssertEqual(sut.naryString(from: 365, radix: 4), "11231")
        XCTAssertEqual(sut.naryString(from: 365, radix: 5), "2430")
        XCTAssertEqual(sut.naryString(from: 365, radix: 6), "1405")
        XCTAssertEqual(sut.naryString(from: 365, radix: 7), "1031")
        XCTAssertEqual(sut.naryString(from: 365, radix: 9), "445")
        XCTAssertEqual(sut.naryString(from: 365, radix: 10), "365")
    }
    
    func testCommonDirectoryPath() {
        XCTAssertEqual(sut.commonDirectoryPath(for: ["/web/images/image1.png", "/web/images/image2.png"]), "/web/images/")
        XCTAssertEqual(sut.commonDirectoryPath(for: ["/web/assets/style.css", "/web/scripts/app.js",  "home/setting.conf"]), "")
        XCTAssertEqual(sut.commonDirectoryPath(for: ["/web/assets/style.css", "/.bin/mocha",  "/read.me"]), "/")
        XCTAssertEqual(sut.commonDirectoryPath(for: ["/web/favicon.ico", "/web-scripts/dump", "/webalizer/logs"]), "/")
    }
    
    func testMatrixProduct() {
        XCTAssertEqual(sut.matrixProduct(left:  [[1, 0, 0], [0, 1, 0], [0, 0, 1]],
                                          right: [[1, 2, 3], [4, 5, 6], [7, 8, 9]]),
                       [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
        XCTAssertEqual(sut.matrixProduct(left:  [[1, 2, 3]],
                                          right: [[4], [5], [6]]),
                       [[32]])
    }
    
    func testEvaluateNoughtsAndCrossesPosition() {
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .x, .x],
                                                                [.o, .none, .o],
                                                                [.o, .none, .none]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.none, .o, .o],
                                                                [.x, .x, .x],
                                                                [.o, .none, .o]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.none, .none, .o],
                                                                [.o, .none, .o],
                                                                [.x, .x, .x]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .none, .o],
                                                                [.x, .none, .o],
                                                                [.x, .o, .none]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.o, .x, .o],
                                                                [.x, .x, .o],
                                                                [.o, .x, .none]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.o, .o, .x],
                                                                [.x, .o, .x],
                                                                [.o, .x, .x]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .o, .o],
                                                                [.x, .x, .o],
                                                                [.o, .x, .x]]), .x)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.o, .o, .x],
                                                                [.x, .x, .o],
                                                                [.x, .none, .o]]), .x)
        
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.o, .o, .o],
                                                                [.none, .x, .x],
                                                                [.x, .none, .none]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .none, .x],
                                                                [.o, .o, .o],
                                                                [.x, .none, .x]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.none, .none, .none],
                                                                [.x, .none, .x],
                                                                [.o, .o, .o]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.o, .none, .x],
                                                                [.o, .x, .x],
                                                                [.o, .x, .none]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .o, .x],
                                                                [.x, .o, .o],
                                                                [.o, .o, .x]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .x, .o],
                                                                [.x, .o, .o],
                                                                [.none, .x, .o]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.o, .x, .x],
                                                                [.x, .o, .x],
                                                                [.o, .x, .o]]), .o)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .x, .o],
                                                                [.x, .o, .x],
                                                                [.o, .none, .x]]), .o)
        
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.none, .none, .none],
                                                                [.none, .none, .none],
                                                                [.none, .none, .none]]), .none)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .none, .none],
                                                                [.o, .none, .o],
                                                                [.none, .none, .x]]), .none)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .o, .x],
                                                                [.x, .o, .x],
                                                                [.o, .x, .o]]), .none)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .o, .x],
                                                                [.o, .x, .x],
                                                                [.o, .x, .o]]), .none)
        XCTAssertEqual(sut.evaluateNoughtsAndCrossesPosition([ [.x, .o, .x],
                                                                [.o, .none, .o],
                                                                [.x, .o, .x]]), .none)
    }
}
