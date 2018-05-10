
import Foundation

class Arrays<Element> {
    
    /**
     * Returns an index of the specified element in array or -1 if element is not found
     *
     * Example:
     *    ["Ace", 10, true], 10                    => 1
     *    ["Array", "Number', "string"], "Date"    => -1
     *    [0, 1, 2, 3, 4, 5], 5                    => 5
     */
    func index(of element: Element) -> Int {
        return -1
    }
    
    /**
     * Generates an array of odd numbers of the specified length
     *
     * Example:
     *    1 => [1]
     *    2 => [1, 3]
     *    5 => [1, 3, 5, 7, 9]
     */
    func arrayOfOdds(length: Int) -> Array<Int> {
        return []
    }

    /**
     * Returns the doubled array - elements of the specified array are repeated twice
     * using original order
     *
     * Example:
     *    ["Ace", 10, true]  => ["Ace", 10, true,   "Ace", 10, true]
     *    [0, 1, 2, 3, 4, 5] => [0, 1, 2, 3, 4, 5,   0, 1, 2, 3, 4, 5]
     *    []                 => []
     */
    func doubledArray(from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns the array of positive numbers from the specified array in original order
     *
     * Example:
     *    [0, 1, 2, 3, 4, 5] => [1, 2, 3, 4, 5]
     *    [-1, 2, -5, -4, 0] => [2]
     *    []                 => []
     */
    func positivesArray(from array: Array<Int>) -> Array<Int> {
        return []
    }
    
    /**
     * Returns the elements of array which are of a String type with preserving the order
     *
     * Example:
     *    [0, 1, "cat", 3, true, "dog"] => ["cat", "dog"]
     *    [1, 2, 3, 4, 5]               => []
     *    ["cat", "dog", "raccon"]      => ["cat", "dog", "racoon"]
     */
    func stringsArray(from array: Array<Element>) -> Array<String> {
        return []
    }
    
    /**
     * Removes nil values from the specified array
     *
     * Example:
     *    [0, nil, "cat", nil, ""] => [0, "cat", ""]
     *    [1, 2, 3, 4, 5, false]   => [1, 2, 3, 4, 5, false]
     *    [nil, 0, 9, nil]         => [0, 9]
     */
    func filterNils(from array: Array<Element?>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns the array of useprcase strings from the specified array
     *
     * Example:
     *    ["permanent-internship", "glutinous-shriek", "multiplicative-elevation"] =>
     *        ["PERMANENT-INTERNSHIP", "GLUTINOUS-SHRIEK", "MULTIPLICATIVE-ELEVATION"]
     *    ["a", "b", "c", "d", "e", "f", "g"]  => ["A", "B", "C", "D", "E", "F", "G"]
     */
    func uppercasedArray(from array: Array<String>) -> Array<String> {
        return []
    }
    
    /**
     * Returns the array of string lengths from the specified string array.
     *
     * Example:
     *    ["", "a", "bc", "def", "ghij"]  => [0, 1, 2, 3, 4]
     *    ["swift", "magenta", "ember"]   => [7, 5, 5]
     */
    func lengthsArray(from array: Array<String>) -> Array<Int> {
        return []
    }
    
    /**
     * Inserts the item into specified array at specified index
     *
     * Example:
     *    [1, 3, 4, 5], 2, 1     => [1, 2, 3, 4, 5]
     *    [1, "b", "c"], 0, "x"  => ["x", 1, "b", "c"]
     */
    func insertItem(_ item: Element, at index: Int, in array: Array<Element>) {
        //
    }
    
    /**
     * Returns an array, up to the specified maximum length, containing the initial elements of the array.
     *
     * Example:
     *    [1, 3, 4, 5 ], 2         => [1, 3]
     *    ["a", "b", "c", "d"], 3  => ["a", "b", "c"]
     */
    func prefix(_ maxLength: Int, from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns an array, up to the given maximum length, containing the final elements of the array
     *
     * Example:
     *    [1, 3, 4, 5 ], 2         => [4, 5]
     *    ["a", "b", "c", "d"], 3  => ["b", "c", "d"]
     */
    func suffix(_ maxLength: Int, from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Transforms the numeric array into the according array of squares:
     *   f(x) = x * x
     *
     * Example:
     *   [0, 1, 2, 3, 4, 5] => [0, 1, 4, 9, 16, 25]
     *   [10, 100, -1]      => [100, 10000, 1]
     */
    func squaredArray(from array: Array<Int>) -> Array<Int> {
        return []
    }
    
    /**
     * Transforms the numeric array to the according moving sum array:
     *     f[n] = x[0] + x[1] + x[2] +...+ x[n]
     *  or f[n] = f[n-1] + x[n]
     *
     * Example:
     *   [1, 1, 1, 1, 1]                  => [ 1, 2, 3, 4, 5 ]
     *   [10, -10, 10, -10, 10]           => [ 10, 0, 10, 0, 10 ]
     *   [0, 0, 0, 0, 0]                  => [0, 0, 0, 0, 0]
     *   [1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ] => [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
     */
    func movingSumArray(from array: Array<Int>) -> Array<Int> {
        return []
    }
    
    /**
     * Returns every second item from the specified array:
     *
     * Example:
     * [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] => [2, 4, 6, 8, 10]
     * ["a", "b", "c", 1]              => ["b", 1]
     * ["a"]                           => []
     */
    func objectsAtOddIndexes(from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Propagates every item in the array by quantity equal to its index
     * Returns an array that consists of: one 'first' item, two 'second' items, tree 'third' items etc.
     *
     * Example:
     *  []                 => []
     *  [1]                => [1]
     *  ["a", "b"]         => ["a", "b","b"]
     *  ["a", "b", "c", 1] => ["a", "b","b", "c","c","c",  1,1,1,1]
     *  [1,2,3,4,5]        => [1, 2,2, 3,3,3, 4,4,4,4, 5,5,5,5,5]
     */
    func propagateElements(of array: Array<Element>) {
        //
    }
    
    /**
     * Returns the 3 largest numbers from the specified array
     *
     * Example:
     *   []                              => []
     *   [1, 2]                          => [2, 1]
     *   [1, 2, 3]                       => [3, 2, 1]
     *   [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] => [10, 9, 8]
     *   [10, 10, 10, 10]                => [10, 10, 10]
     */
    func threeLargestNumbers(from array: Array<Int>) -> Array<Int> {
        return []
    }
    
    /**
     * Returns the number of positive numbers from specified array
     *
     * Example:
     *   [ ]                  => 0
     *   [-1, 0, 1]           => 1
     *   [1, 2, 3]            => 3
     *   [nil, 1, "elephant"] => 1
     *   [1, "2"]             => 1
     */
    func numberOfPositiveNumbers(in array: Array<Element?>) -> Int {
        return 0
    }
    
    /**
     * Sorts digit names
     *
     * Example:
     *   []                                 => []
     *   ["nine", "one"]                    => ["one", "nine"]
     *   ["one", "two", "three"]            => ["one", "two", "three"]
     *   ["nine", "eight", "nine", "eight"] => ["eight", "eight", "nine", "nine"]
     *   ["one", "one", "one", "zero"]      => ["zero", "one", "one", "one"]
     */
    func sortDigitNamesByNumericOrder(_ array: Array<String>) {
        //
    }
    
    /**
     * Returns the sum of all items in the specified array of numbers
     *
     * Example:
     *   []                 => 0
     *   [1, 2, 3]          => 6
     *   [-1, 1, -1, 1]     => 0
     *   [1, 10, 100, 1000] => 1111
     */
    func sumArrayItems(_ array: Array<Int>) -> Int {
        return 0
    }
    
    /**
     * Returns the number of all occurrences of the specified item in the array
     *
     * Example:
     *    [0, 0, 1, 1, 1, 2 ], 1     => 3
     *    [1, 2, 3, 4, 5 ], 0        => 0
     *    ["a','b','c','c' ], 'c'    => 2
     *    [nil, "nil", nil], nil     => 2
     *    [true, 0, 1, "true"], true => 1
     */
    func countOccurrencesOfItem(_ item: Element, in array: Array<Element?>) -> Int {
        return 0
    }
    
    /**
     * Concatenates all elements from specified array into single string with ',' separator
     *
     * Example:
     *    [0, false, "cat", true, ""]   => "0, false, cat,true'
     *    [1, 2, 3, 4, 5]               => '1,2,3,4,5'
     *    ["rock", "paper", "scissors"] => 'rock,paper,scissors'
     */
    func string(from array: Array<Element>) -> String {
        return ""
    }
    
    /**
     * Creates an indentity matrix of the specified size
     *
     * Example:
     *     1 => [[1]]
     *
     *     2 => [[1,0],
     *           [0,1]]
     *
     *          [[1,0,0,0,0],
     *           [0,1,0,0,0],
     *     5 =>  [0,0,1,0,0],
     *           [0,0,0,1,0],
     *           [0,0,0,0,1]]
     */
    func createIdentityMatrix(size: Int) -> Array<Array<Int>> {
        return []
    }
    
    /**
     * Creates an array of integers from the specified start to end (inclusive)
     *
     * Example:
     *     1, 5   => [1, 2, 3, 4, 5 ]
     *    -2, 2   => [-2, -1, 0, 1, 2 ]
     *     0, 100 => [0, 1, 2, ..., 100 ]
     *     3, 3   => [3]
     */
    func arrayOfIntegers(from startNumber: Int, to endNumber: Int) -> Array<Int> {
        return []
    }
    
    /**
     * Returns array containing only unique values from the specified array.
     *
     * Example:
     *   [1, 2, 3, 3, 2, 1]       => [1, 2, 3]
     *   ["a", "a", "a", "a"]     => ["a"]
     *   [1, 1, 2, 2, 3, 3, 4, 4] => [ 1, 2, 3, 4]
     */
    func uniqueElements(from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns a  dictionary from keys and values arrays
     *
     * Example:
     *
     *   keys = []group([
     *      { country: 'Belarus', city: 'Brest' },
     *      { country: 'Russia', city: 'Omsk' },
     *      { country: 'Russia', city: 'Samara' },
     *      { country: 'Belarus', city: 'Grodno' },
     *      { country: 'Belarus', city: 'Minsk' },
     *      { country: 'Poland', city: 'Lodz' }
     *     ],
     *     item => item.country,
     *     item => item.city
     *   )
     *            =>
     *   Map {
     *    "Belarus" => ["Brest", "Grodno", "Minsk"],
     *    "Russia" => ["Omsk", "Samara"],
     *    "Poland" => ["Lodz"]
     *   }
     */
    func formDictionary(with keys: Array<String>, and values: Array<String>) -> Dictionary<String, String> {
        return [:]
        
    }
}
