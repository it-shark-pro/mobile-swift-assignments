
import XCTest
import Foundation
@testable import _4_Arrays

final class ArraysTests: XCTestCase {
    
    var sut: ArraysFunctions!
    
    override func setUp() {
        super.setUp()
        sut = ArraysFunctions()
    }
    
    func testIndexOfElement() {
        XCTAssertEqual(sut.index(of: "Date", in: ["Array", "Number", "string"]), -1)
        XCTAssertEqual(sut.index(of: 5, in: [0, 1, 2, 3, 4, 5]), [0, 1, 2, 3, 4, 5].index(where: { $0 == 5 }))
    }
       
    func testArrayOfOdds() {
        XCTAssertEqual(sut.arrayOfOdds(length: 1), [1])
        XCTAssertEqual(sut.arrayOfOdds(length: 2), [1, 3])
        XCTAssertEqual(sut.arrayOfOdds(length: 5), [1, 3, 5, 7, 9])
    }
    
    func testDoubledArray() {
        XCTAssertEqual(sut.doubledArray(from: ["Ace", "10", "Jack"]), ["Ace", "10", "Jack", "Ace", "10", "Jack"])
        XCTAssertEqual(sut.doubledArray(from: [0, 1, 2, 3, 4, 5]), [0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5])
        XCTAssertEqual(sut.doubledArray(from: Array<Int>()), Array<Int>())
    }
    
    func testPositivesArray() {
        XCTAssertEqual(sut.positivesArray(from: [0, 1, 2, 3, 4, 5]), [1, 2, 3, 4, 5])
        XCTAssertEqual(sut.positivesArray(from: [-1, 2, -5, -4, 0]), [2])
        XCTAssertEqual(sut.positivesArray(from: []), [])
    }
    
    func testStringsArray() {
        XCTAssertEqual(sut.stringsArray(from: [0, 1, "cat", 3, true, "dog"]), ["cat", "dog"])
        XCTAssertEqual(sut.stringsArray(from: [1, 2, 3, 4, 5]), [])
        XCTAssertEqual(sut.stringsArray(from: ["cat", "dog", "raccoon"]), ["cat", "dog", "raccoon"])
    }
    
    func testFilterNils() {
        XCTAssertEqual(sut.filterNils(from: ["0", nil, "cat", nil, ""]), ["0", "cat", ""])
        XCTAssertEqual(sut.filterNils(from: [1, 2, 3, 4, 5, 9]), [1, 2, 3, 4, 5, 9])
        XCTAssertEqual(sut.filterNils(from: [nil, 0, 9, nil]), [0, 9])
    }
    
    func testUppercasedArray() {
        XCTAssertEqual(sut.uppercasedArray(from: ["permanent-internship", "glutinous-shriek", "multiplicative-elevation"]),
                       ["PERMANENT-INTERNSHIP", "GLUTINOUS-SHRIEK", "MULTIPLICATIVE-ELEVATION"])
        XCTAssertEqual(sut.uppercasedArray(from: ["a", "b", "c", "d", "e", "f", "g"]), ["A", "B", "C", "D", "E", "F", "G"])
    }
    
    func testLengthsArray() {
        XCTAssertEqual(sut.lengthsArray(from: ["", "a", "bc", "def", "ghij"]), [0, 1, 2, 3, 4])
        XCTAssertEqual(sut.lengthsArray(from: ["swift", "magenta", "ember"]), [7, 5, 5])
    }
    
    func testArrayWithInsertedItem() {
        XCTAssertEqual(sut.arrayWithInsertedItem(2, at: 1, in: [1, 3, 4, 5]), [1, 2, 3, 4, 5])
        XCTAssertEqual(sut.arrayWithInsertedItem("x", at: 0, in: ["1", "b", "c"]), ["x", "1", "b", "c"])
    }
    
    func testPrefix() {
        XCTAssertEqual(sut.prefix(2, from: [1, 3, 4, 5 ]), [1, 3])
        XCTAssertEqual(sut.prefix(3, from: ["a", "b", "c", "d"]), ["a", "b", "c"])
    }
    
    func testSuffix() {
        XCTAssertEqual(sut.suffix(2, from: [1, 3, 4, 5 ]), [4, 5])
        XCTAssertEqual(sut.suffix(3, from: ["a", "b", "c", "d"]), ["b", "c", "d"])
    }
    
    func testSquaredArray() {
        XCTAssertEqual(sut.squaredArray(from: [0, 1, 2, 3, 4, 5]), [0, 1, 4, 9, 16, 25])
        XCTAssertEqual(sut.squaredArray(from: [10, 100, -1]), [100, 10000, 1])
    }

    func testMovingSumArray() {
        XCTAssertEqual(sut.movingSumArray(from: [1, 1, 1, 1, 1]), [1, 2, 3, 4, 5])
        XCTAssertEqual(sut.movingSumArray(from: [10, -10, 10, -10, 10]), [10, 0, 10, 0, 10])
        XCTAssertEqual(sut.movingSumArray(from: [0, 0, 0, 0, 0]), [0, 0, 0, 0, 0])
        XCTAssertEqual(sut.movingSumArray(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [1, 3, 6, 10, 15, 21, 28, 36, 45, 55])
    }
    
    func testObjectsAtOddIndexes() {
        XCTAssertEqual(sut.objectsAtOddIndexes(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [2, 4, 6, 8, 10])
        XCTAssertEqual(sut.objectsAtOddIndexes(from: ["a", "b", "c", "1"]), ["b", "1"])
        XCTAssertEqual(sut.objectsAtOddIndexes(from: ["a"]), [])
    }
    
    func testArrayByPropagatingElements() {
        XCTAssertEqual(sut.arrayByPropagatingElements(of: Array<Int>()), Array<Int>())
        XCTAssertEqual(sut.arrayByPropagatingElements(of: [1]), [1])
        XCTAssertEqual(sut.arrayByPropagatingElements(of: ["a", "b"]), ["a", "b", "b"])
        XCTAssertEqual(sut.arrayByPropagatingElements(of: [1, 2, 3, 4, 5]), [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5])
    }
    
    func testThreeLargestNumbers() {
        XCTAssertEqual(sut.threeLargestNumbers(from: []), [])
        XCTAssertEqual(sut.threeLargestNumbers(from: [1, 2] ), [2, 1])
        XCTAssertEqual(sut.threeLargestNumbers(from: [1, 2, 3]), [3, 2, 1])
        XCTAssertEqual(sut.threeLargestNumbers(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [10, 9, 8])
        XCTAssertEqual(sut.threeLargestNumbers(from: [10, 10, 10, 10] ), [10, 10, 10])
    }
    
    func testNumberOfPositiveNumbers() {
        XCTAssertEqual(sut.numberOfPositiveNumbers(in: Array<Int>()), 0)
        XCTAssertEqual(sut.numberOfPositiveNumbers(in: [-1, 0, 1]), 1)
        XCTAssertEqual(sut.numberOfPositiveNumbers(in: [1, 2, 3]), 3)
        XCTAssertEqual(sut.numberOfPositiveNumbers(in: ["koala", 1, "elephant"]), 1)
    }
    
    func testSortedDigitNamesByNumericOrder() {
        XCTAssertEqual(sut.sortedDigitNamesByNumericOrder([]), [])
        XCTAssertEqual(sut.sortedDigitNamesByNumericOrder(["nine", "one"]), ["one", "nine"])
        XCTAssertEqual(sut.sortedDigitNamesByNumericOrder(["one", "two", "three"]), ["one", "two", "three"])
        XCTAssertEqual(sut.sortedDigitNamesByNumericOrder(["nine", "eight", "nine", "eight"]), ["eight", "eight", "nine", "nine"])
        XCTAssertEqual(sut.sortedDigitNamesByNumericOrder(["one", "one", "one", "zero"]), ["zero", "one", "one", "one"])
    }
    
    func testSumArrayItems() {
        XCTAssertEqual(sut.sumArrayItems([]), 0)
        XCTAssertEqual(sut.sumArrayItems([1, 2, 3]), 6)
        XCTAssertEqual(sut.sumArrayItems([-1, 1, -1, 1]), 0)
        XCTAssertEqual(sut.sumArrayItems([1, 10, 100, 1000]), 1111)
    }
    
    func testCountOccurrencesOfItem() {
        XCTAssertEqual(sut.countOccurrencesOfItem(1, in: [0, 0, 1, 1, 1, 2]), 3)
        XCTAssertEqual(sut.countOccurrencesOfItem(0, in: [1, 2, 3, 4, 5]), 0)
        XCTAssertEqual(sut.countOccurrencesOfItem("c", in: ["a", "b", "c", "c"]), 2)
    }
    
    func testStringFromArray() {
        XCTAssertEqual(sut.string(from: [0, false, "cat", true, ""]), "0, false, cat,true")
        XCTAssertEqual(sut.string(from: [1, 2, 3, 4, 5]), "1,2,3,4,5")
        XCTAssertEqual(sut.string(from: ["rock", "paper", "scissors"]), "rock,paper,scissors")
    }
    
    func testCreateIdentityMatrix() {
        XCTAssertEqual(sut.createIdentityMatrix(size: 1), [[1]])
        XCTAssertEqual(sut.createIdentityMatrix(size: 2), [[1,0], [0,1]])
        XCTAssertEqual(sut.createIdentityMatrix(size: 5), [[1,0,0,0,0], [0,1,0,0,0], [0,0,1,0,0], [0,0,0,1,0], [0,0,0,0,1]])
    }

    func testArrayOfIntegers() {
        XCTAssertEqual(sut.arrayOfIntegers(from: 1, to: 5), [1, 2, 3, 4, 5])
        XCTAssertEqual(sut.arrayOfIntegers(from: -2, to: 2), [-2, -1, 0, 1, 2])
        XCTAssertEqual(sut.arrayOfIntegers(from: 3, to: 3), [3])
    }
    
    func testUniqueElements() {
        XCTAssertEqual(sut.uniqueElements(from: [1, 2, 3, 3, 2, 1]), [1, 2, 3])
        XCTAssertEqual(sut.uniqueElements(from: ["a", "a", "a", "a"]), ["a"])
        XCTAssertEqual(sut.uniqueElements(from: [1, 1, 2, 2, 3, 3, 4, 4]), [1, 2, 3, 4])
    }
    
    func testFormDictionary(){
        XCTAssertEqual(sut.formDictionary(with: [], and: []), [:])
        XCTAssertEqual(sut.formDictionary(with: ["Brest", "Omsk", "Samara", "Grodno", "Minsk", "Łódź"],
                                          and: ["Belarus", "Russia", "Russia", "Belarus", "Belarus", "Poland"]),
                       ["Brest": "Belarus", "Omsk": "Russia", "Samara": "Russia", "Grodno": "Belarus", "Minsk": "Belarus", "Łódź": "Poland"])
    }
    
    func testArrayBySwappingHeadWithTail() {
        XCTAssertEqual(sut.arrayBySwappingHeadWithTail([1, 2, 3, 4, 5]), [4, 5, 3, 1, 2])
        XCTAssertEqual(sut.arrayBySwappingHeadWithTail([1, 2]), [2, 1])
        XCTAssertEqual(sut.arrayBySwappingHeadWithTail([1, 2, 3, 4, 5, 6, 7, 8]), [5, 6, 7, 8, 1, 2, 3, 4])
    }
}
