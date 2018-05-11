
import XCTest
import Foundation
@testable import _4_Arrays

class ArraysTests: XCTestCase {
    
    var aut: ArraysFunctions!
    
    override func setUp() {
        super.setUp()
        aut = ArraysFunctions()
    }
    
    func testIndexOfElement() {
        XCTAssertEqual(aut.index(of: "Date", in: ["Array", "Number", "string"]), -1)
        XCTAssertEqual(aut.index(of: 5, in: [0, 1, 2, 3, 4, 5]), [0, 1, 2, 3, 4, 5].index(where: { $0 == 5 }))
    }
       
    func testArrayOfOdds() {
        XCTAssertEqual(aut.arrayOfOdds(length: 1), [1])
        XCTAssertEqual(aut.arrayOfOdds(length: 2), [1, 3])
        XCTAssertEqual(aut.arrayOfOdds(length: 5), [1, 3, 5, 7, 9])
    }
    
    func testDoubledArray() {
        XCTAssertEqual(aut.doubledArray(from: ["Ace", "10", "Jack"]), ["Ace", "10", "Jack", "Ace", "10", "Jack"])
        XCTAssertEqual(aut.doubledArray(from: [0, 1, 2, 3, 4, 5]), [0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5])
        XCTAssertEqual(aut.doubledArray(from: Array<Int>()), Array<Int>())
    }
    
    func testPositivesArray() {
        XCTAssertEqual(aut.positivesArray(from: [0, 1, 2, 3, 4, 5]), [1, 2, 3, 4, 5])
        XCTAssertEqual(aut.positivesArray(from: [-1, 2, -5, -4, 0]), [2])
        XCTAssertEqual(aut.positivesArray(from: []), [])
    }
    
    func testStringsArray() {
        XCTAssertEqual(aut.stringsArray(from: [0, 1, "cat", 3, true, "dog"]), ["cat", "dog"])
        XCTAssertEqual(aut.stringsArray(from: [1, 2, 3, 4, 5]), [])
        XCTAssertEqual(aut.stringsArray(from: ["cat", "dog", "raccoon"]), ["cat", "dog", "raccoon"])
    }
    
    func testFilterNils() {
        XCTAssertEqual(aut.filterNils(from: ["0", nil, "cat", nil, ""]), ["0", "cat", ""])
        XCTAssertEqual(aut.filterNils(from: [1, 2, 3, 4, 5, 9]), [1, 2, 3, 4, 5, 9])
        XCTAssertEqual(aut.filterNils(from: [nil, 0, 9, nil]), [0, 9])
    }
    
    func testUppercasedArray() {
        XCTAssertEqual(aut.uppercasedArray(from: ["permanent-internship", "glutinous-shriek", "multiplicative-elevation"]),
                       ["PERMANENT-INTERNSHIP", "GLUTINOUS-SHRIEK", "MULTIPLICATIVE-ELEVATION"])
        XCTAssertEqual(aut.uppercasedArray(from: ["a", "b", "c", "d", "e", "f", "g"]), ["A", "B", "C", "D", "E", "F", "G"])
    }
    
    func testLengthsArray() {
        XCTAssertEqual(aut.lengthsArray(from: ["", "a", "bc", "def", "ghij"]), [0, 1, 2, 3, 4])
        XCTAssertEqual(aut.lengthsArray(from: ["swift", "magenta", "ember"]), [7, 5, 5])
    }
    
    func testArrayWithInsertedItem() {
        XCTAssertEqual(aut.arrayWithInsertedItem(2, at: 1, in: [1, 3, 4, 5]), [1, 2, 3, 4, 5])
        XCTAssertEqual(aut.arrayWithInsertedItem("x", at: 0, in: ["1", "b", "c"]), ["x", "1", "b", "c"])
    }
    
    func testPrefix() {
        XCTAssertEqual(aut.prefix(2, from: [1, 3, 4, 5 ]), [1, 3])
        XCTAssertEqual(aut.prefix(3, from: ["a", "b", "c", "d"]), ["a", "b", "c"])
    }
    
    func testSuffix() {
        XCTAssertEqual(aut.suffix(2, from: [1, 3, 4, 5 ]), [4, 5])
        XCTAssertEqual(aut.suffix(3, from: ["a", "b", "c", "d"]), ["b", "c", "d"])
    }
    
    func testSquaredArray() {
        XCTAssertEqual(aut.squaredArray(from: [0, 1, 2, 3, 4, 5]), [0, 1, 4, 9, 16, 25])
        XCTAssertEqual(aut.squaredArray(from: [10, 100, -1]), [100, 10000, 1])
    }

    func testMovingSumArray() {
        XCTAssertEqual(aut.movingSumArray(from: [1, 1, 1, 1, 1]), [1, 2, 3, 4, 5])
        XCTAssertEqual(aut.movingSumArray(from: [10, -10, 10, -10, 10]), [10, 0, 10, 0, 10])
        XCTAssertEqual(aut.movingSumArray(from: [0, 0, 0, 0, 0]), [0, 0, 0, 0, 0])
        XCTAssertEqual(aut.movingSumArray(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [1, 3, 6, 10, 15, 21, 28, 36, 45, 55])
    }
    
    func testObjectsAtOddIndexes() {
        XCTAssertEqual(aut.objectsAtOddIndexes(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [2, 4, 6, 8, 10])
        XCTAssertEqual(aut.objectsAtOddIndexes(from: ["a", "b", "c", "1"]), ["b", "1"])
        XCTAssertEqual(aut.objectsAtOddIndexes(from: ["a"]), [])
    }
    
    func testArrayByPropagatingElements() {
        XCTAssertEqual(aut.arrayByPropagatingElements(of: Array<Int>()), Array<Int>())
        XCTAssertEqual(aut.arrayByPropagatingElements(of: [1]), [1])
        XCTAssertEqual(aut.arrayByPropagatingElements(of: ["a", "b"]), ["a", "b", "b"])
        XCTAssertEqual(aut.arrayByPropagatingElements(of: [1, 2, 3, 4, 5]), [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5])
    }
    
    func testThreeLargestNumbers() {
        XCTAssertEqual(aut.threeLargestNumbers(from: []), [])
        XCTAssertEqual(aut.threeLargestNumbers(from: [1, 2] ), [2, 1])
        XCTAssertEqual(aut.threeLargestNumbers(from: [1, 2, 3]), [3, 2, 1])
        XCTAssertEqual(aut.threeLargestNumbers(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [10, 9, 8])
        XCTAssertEqual(aut.threeLargestNumbers(from: [10, 10, 10, 10] ), [10, 10, 10])
    }
    
    func testNumberOfPositiveNumbers() {
        XCTAssertEqual(aut.numberOfPositiveNumbers(in: Array<Int>()), 0)
        XCTAssertEqual(aut.numberOfPositiveNumbers(in: [-1, 0, 1]), 1)
        XCTAssertEqual(aut.numberOfPositiveNumbers(in: [1, 2, 3]), 3)
        XCTAssertEqual(aut.numberOfPositiveNumbers(in: ["koala", 1, "elephant"]), 1)
    }
    
    func testSortedDigitNamesByNumericOrder() {
        XCTAssertEqual(aut.sortedDigitNamesByNumericOrder([]), [])
        XCTAssertEqual(aut.sortedDigitNamesByNumericOrder(["nine", "one"]), ["one", "nine"])
        XCTAssertEqual(aut.sortedDigitNamesByNumericOrder(["one", "two", "three"]), ["one", "two", "three"])
        XCTAssertEqual(aut.sortedDigitNamesByNumericOrder(["nine", "eight", "nine", "eight"]), ["eight", "eight", "nine", "nine"])
        XCTAssertEqual(aut.sortedDigitNamesByNumericOrder(["one", "one", "one", "zero"]), ["zero", "one", "one", "one"])
    }
    
    func testSumArrayItems() {
        XCTAssertEqual(aut.sumArrayItems([]), 0)
        XCTAssertEqual(aut.sumArrayItems([1, 2, 3]), 6)
        XCTAssertEqual(aut.sumArrayItems([-1, 1, -1, 1]), 0)
        XCTAssertEqual(aut.sumArrayItems([1, 10, 100, 1000]), 1111)
    }
    
    func testCountOccurrencesOfItem() {
        XCTAssertEqual(aut.countOccurrencesOfItem(1, in: [0, 0, 1, 1, 1, 2]), 3)
        XCTAssertEqual(aut.countOccurrencesOfItem(0, in: [1, 2, 3, 4, 5]), 0)
        XCTAssertEqual(aut.countOccurrencesOfItem("c", in: ["a", "b", "c", "c"]), 2)
    }
    
    func testStringFromArray() {
        XCTAssertEqual(aut.string(from: [0, false, "cat", true, ""]), "0, false, cat,true")
        XCTAssertEqual(aut.string(from: [1, 2, 3, 4, 5]), "1,2,3,4,5")
        XCTAssertEqual(aut.string(from: ["rock", "paper", "scissors"]), "rock,paper,scissors")
    }
    
    func testCreateIdentityMatrix() {
        XCTAssertEqual(aut.createIdentityMatrix(size: 1), [[1]])
        XCTAssertEqual(aut.createIdentityMatrix(size: 2), [[1,0], [0,1]])
        XCTAssertEqual(aut.createIdentityMatrix(size: 5), [[1,0,0,0,0], [0,1,0,0,0], [0,0,1,0,0], [0,0,0,1,0], [0,0,0,0,1]])
    }

    func testArrayOfIntegers() {
        XCTAssertEqual(aut.arrayOfIntegers(from: 1, to: 5), [1, 2, 3, 4, 5])
        XCTAssertEqual(aut.arrayOfIntegers(from: -2, to: 2), [-2, -1, 0, 1, 2])
        XCTAssertEqual(aut.arrayOfIntegers(from: 3, to: 3), [3])
    }
    
    func testUniqueElements() {
        XCTAssertEqual(aut.uniqueElements(from: [1, 2, 3, 3, 2, 1]), [1, 2, 3])
        XCTAssertEqual(aut.uniqueElements(from: ["a", "a", "a", "a"]), ["a"])
        XCTAssertEqual(aut.uniqueElements(from: [1, 1, 2, 2, 3, 3, 4, 4]), [1, 2, 3, 4])
    }
    
    func testFormDictionary(){
        XCTAssertEqual(aut.formDictionary(with: [], and: []), [:])
        XCTAssertEqual(aut.formDictionary(with: ["Brest", "Omsk", "Samara", "Grodno", "Minsk", "Łódź"],
                                          and: ["Belarus", "Russia", "Russia", "Belarus", "Belarus", "Poland"]),
                       ["Brest": "Belarus", "Omsk": "Russia", "Samara": "Russia", "Grodno": "Belarus", "Minsk": "Belarus", "Łódź": "Poland"])
    }
    
    func testArrayBySwappingHeadWithTail() {
        XCTAssertEqual(aut.arrayBySwappingHeadWithTail([1, 2, 3, 4, 5]), [4, 5, 3, 1, 2])
        XCTAssertEqual(aut.arrayBySwappingHeadWithTail([1, 2]), [2, 1])
        XCTAssertEqual(aut.arrayBySwappingHeadWithTail([1, 2, 3, 4, 5, 6, 7, 8]), [5, 6, 7, 8, 1, 2, 3, 4])
    }
}
