
import Foundation

final class ArraysFunctions {
    
    /**
     * Returns an index of the specified element in array or -1 if element is not found
     *
     * Example:
     *    ["Array", "Number", "string"], "Date"    => -1
     *    [0, 1, 2, 3, 4, 5], 5                    => 5
     */
    func index<Element: Equatable>(of element: Element, in array: Array<Element>) -> Int {
        return 0
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
     *    ["Ace", "10", "Jack"]  => ["Ace", "10", "Jack",   "Ace", "10", "Jack"]
     *    [0, 1, 2, 3, 4, 5] => [0, 1, 2, 3, 4, 5,   0, 1, 2, 3, 4, 5]
     *    []                 => []
     */
    func doubledArray<Element>(from array: Array<Element>) -> Array<Element> {
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
     *    ["cat", "dog", "raccoon"]      => ["cat", "dog", "raccoon"]
     */
    func stringsArray<Element>(from array: Array<Element>) -> Array<String> {
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
    func filterNils<Element>(from array: Array<Element?>) -> Array<Element> {
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
     *    ["1", "b", "c"], "x", 0   => ["x", 1, "b", "c"]
     */
    func arrayWithInsertedItem<Element>(_ item: Element, at index: Int, in array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns an array, up to the specified maximum length, containing the initial elements of the array.
     *
     * Example:
     *    [1, 3, 4, 5 ], 2         => [1, 3]
     *    ["a", "b", "c", "d"], 3  => ["a", "b", "c"]
     */
    func prefix<Element>(_ maxLength: Int, from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns an array, up to the given maximum length, containing the final elements of the array
     *
     * Example:
     *    [1, 3, 4, 5 ], 2         => [4, 5]
     *    ["a", "b", "c", "d"], 3  => ["b", "c", "d"]
     */
    func suffix<Element>(_ maxLength: Int, from array: Array<Element>) -> Array<Element> {
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
     *   [1, 1, 1, 1, 1]                  => [1, 2, 3, 4, 5]
     *   [10, -10, 10, -10, 10]           => [10, 0, 10, 0, 10]
     *   [0, 0, 0, 0, 0]                  => [0, 0, 0, 0, 0]
     *   [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  => [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
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
    func objectsAtOddIndexes<Element>(from array: Array<Element>) -> Array<Element> {
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
     *  [1,2,3,4,5]        => [1, 2,2, 3,3,3, 4,4,4,4, 5,5,5,5,5]
     */
    func arrayByPropagatingElements<Element>(of array: Array<Element>) -> Array<Element> {
        return []
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
     */
    func numberOfPositiveNumbers<Element>(in array: Array<Element>) -> Int {
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
    func sortedDigitNamesByNumericOrder(_ array: Array<String>) -> Array<String> {
        return []
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
     *    [0, 0, 1, 1, 1, 2], 1     => 3
     *    [1, 2, 3, 4, 5 ], 0        => 0
     *    ["a", "b", "c", "c"], "c"    => 2
     */
    func countOccurrencesOfItem<Element>(_ item: Element, in array: Array<Element?>) -> Int {
        return 0
    }
    
    /**
     * Concatenates all elements from specified array into single string with ',' separator
     *
     * Example:
     *    [0, false, "cat", true, ""]   => "0, false, cat,true"
     *    [1, 2, 3, 4, 5]               => "1,2,3,4,5"
     *    ["rock", "paper", "scissors"] => "rock,paper,scissors"
     */
    func string<Element>(from array: Array<Element>) -> String {
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
     *     1, 5   => [1, 2, 3, 4, 5]
     *    -2, 2   => [-2, -1, 0, 1, 2]
     *     0, 100 => [0, 1, 2, ..., 100]
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
     *   [1, 1, 2, 2, 3, 3, 4, 4] => [1, 2, 3, 4]
     */
    func uniqueElements<Element>(from array: Array<Element>) -> Array<Element> {
        return []
    }
    
    /**
     * Returns a  dictionary from arrays of keys and values
     *
     * Example:
     *
     *   keys = ["Brest", "Omsk", "Samara", "Grodno", "Minsk", "Łódź"]
     *   values = ["Belarus", "Russia", "Russia", "Belarus", "Belarus", "Poland"]
     *                              =>
     *  dictionary = ["Brest": "Belarus", "Omsk": "Russia", "Samara": "Russia", "Grodno": "Belarus", "Minsk": "Belarus", "Łódź": "Poland"]
     *
     */
    func formDictionary(with keys: Array<String>, and values: Array<String>) -> Dictionary<String, String> {
        return [:]
        
    }
    
    /**
     * Swaps the head and tail of the specified array:
     * the head (first half) of array move to the end, the tail (last half) move to the start.
     * The middle element (if exists) leave on the same position.
     *
     * Example:
     *   [ 1, 2, 3, 4, 5 ]   =>  [4, 5, 3, 1, 2]
     *    \----/   \----/
     *     head     tail
     *
     *   [1, 2]                   => [2, 1]
     *   [1, 2, 3, 4, 5, 6, 7, 8] => [5, 6, 7, 8, 1, 2, 3, 4]
     *
     */
    func arrayBySwappingHeadWithTail<Element>(_ array: Array<Element>) -> Array<Element> {
        return []
    }
}
