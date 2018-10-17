import XCTest
@testable import _1_Strings

final class StringsTests: XCTestCase {
    
    var sut: StringFunctions!

    override func setUp() {
        super.setUp()
        sut = StringFunctions()
    }

    func testConcatenateStrings() {
        XCTAssertEqual(sut.concat("aa", with: "bb"), "aabb")
        XCTAssertEqual(sut.concat("aa", with: ""), "aa")
        XCTAssertEqual(sut.concat("", with: "bb"), "bb")
    }

    func testLengthOfString() {
        XCTAssertEqual(sut.length(of: "aaaaa"), 5)
        XCTAssertEqual(sut.length(of: "a"), 1)
        XCTAssertEqual(sut.length(of: ""), 0)
        XCTAssertEqual(sut.length(of: nil), 0)
    }

    func testGreetingTemplateWithNames() {
        XCTAssertEqual(sut.greetingTemplate(using: "John", and: "Doe"), "Hello, John Doe!")
        XCTAssertEqual(sut.greetingTemplate(using: "Chuck", and: "Norris"), "Hello, Chuck Norris!")
    }

    func testExtractNameFromGreetingTemplate() {
        XCTAssertEqual(sut.extractName(from: "Hello, John Doe!"), "John Doe")
        XCTAssertEqual(sut.extractName(from: "Hello, Chuck Norris!"), "Chuck Norris")
    }

    func testFirstCharacterInString() {
        XCTAssertEqual(sut.firstCharacter(in: "aaaaa"), "a")
        XCTAssertEqual(sut.firstCharacter(in: "b"), "b")
        XCTAssertEqual(sut.firstCharacter(in: ""), nil)
        XCTAssertEqual(sut.firstCharacter(in: nil), nil)
    }

    func testTrimLeadingAndTrailingWhitespaceInString() {
        XCTAssertEqual(sut.trimLeadingAndTrailingWhitespace(in: "  Abracadabra"), "Abracadabra")
        XCTAssertEqual(sut.trimLeadingAndTrailingWhitespace(in: "aaa"), "aaa")
        XCTAssertEqual(sut.trimLeadingAndTrailingWhitespace(in: "\tHello, World! "), "Hello, World!")
    }

    func testMakeRepetitionOfString() {
        XCTAssertEqual(sut.makeRepetition("A", times: 5), "AAAAA")
        XCTAssertEqual(sut.makeRepetition("cat", times: 3), "catcatcat")
    }

    func testRemoveFirstOccurrenceInString() {
        XCTAssertEqual(sut.removeFirstOccurrence(in: "To be or not to be", occurence: " not"), "To be or to be")
        XCTAssertEqual(sut.removeFirstOccurrence(in: "I like legends", occurence: "end"), "I like legs")
        XCTAssertEqual(sut.removeFirstOccurrence(in: "ABABAB", occurence: "BA"), "ABAB")
    }

    func testRemoveBracketsInTag() {
        XCTAssertEqual(sut.removeBrackets(in: "<dictionary>"), "dictionary")
        XCTAssertEqual(sut.removeBrackets(in: "<key>"), "key")
        XCTAssertEqual(sut.removeBrackets(in: "<invalid"), nil)
        XCTAssertEqual(sut.removeBrackets(in: "invalid tag"), nil)
    }

    func testConvertStringToUpperCase() {
        XCTAssertEqual(sut.convertToUpperCase("Thunderstruck"), "THUNDERSTRUCK")
        XCTAssertEqual(sut.convertToUpperCase("abcdefghijklmnopqrstuvwxyz"), "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    }

    func testExtractEmails() {
        XCTAssertEqual(sut.extractEmails(from: "angus.young@gmail.com;brian.johnson@hotmail.com;bon.scott@yahoo.com"),
                       ["angus.young@gmail.com", "brian.johnson@hotmail.com", "bon.scott@yahoo.com"])
        XCTAssertEqual(sut.extractEmails(from: "info@gmail.com"), ["info@gmail.com"])
    }

    func testMakeRectangle() {
        let rectangle6x4 = "┌────┐\n" +
            "│    │\n" +
            "│    │\n" +
        "└────┘\n"
        let rectangle2x2 = "┌┐\n" +
        "└┘\n"
        let rectangle12x3 = "┌──────────┐\n" +
            "│          │\n" +
        "└──────────┘\n"
        XCTAssertEqual(sut.makeRectangle(width: 6, height: 4), rectangle6x4)
        XCTAssertEqual(sut.makeRectangle(width: 2, height: 2), rectangle2x2)
        XCTAssertEqual(sut.makeRectangle(width: 12, height: 3), rectangle12x3)
    }

    func testEncodeUsingRot13() {
        XCTAssertEqual(sut.encodeUsingRot13("hello"), "uryyb")
        XCTAssertEqual(sut.encodeUsingRot13("Why did the chicken cross the road?"), "Jul qvq gur puvpxra pebff gur ebnq?")
        XCTAssertEqual(sut.encodeUsingRot13("Gb trg gb gur bgure fvqr!"), "To get to the other side!")
        XCTAssertEqual(sut.encodeUsingRot13("NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm"), "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
    }

    func testIsString() {
        XCTAssertTrue(sut.isString("aaaa"))
        XCTAssertFalse(sut.isString(["a"]))
        XCTAssertFalse(sut.isString(5))
        XCTAssertFalse(sut.isString(nil))
    }

    func testCardById() {
        let result = ["A♣","2♣","3♣","4♣","5♣","6♣","7♣","8♣","9♣","10♣","J♣","Q♣","K♣",
                      "A♦","2♦","3♦","4♦","5♦","6♦","7♦","8♦","9♦","10♦","J♦","Q♦","K♦",
                      "A♥","2♥","3♥","4♥","5♥","6♥","7♥","8♥","9♥","10♥","J♥","Q♥","K♥",
                      "A♠","2♠","3♠","4♠","5♠","6♠","7♠","8♠","9♠","10♠","J♠","Q♠","K♠"]

        for (index, item) in result.enumerated() {
            XCTAssertEqual(sut.card(by: index), item)
        }
    }
}

