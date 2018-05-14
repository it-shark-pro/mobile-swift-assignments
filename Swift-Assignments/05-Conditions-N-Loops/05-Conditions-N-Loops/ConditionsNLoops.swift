
import Foundation
import CoreGraphics

final class ConditionsNLoopsFunctions {
    
    /**
     * Returns the "Fizz", "Buzz" or an original number using the following rules:
     * 1) return original number
     * 2) but if number multiples of three return "Fizz"
     * 3) for the multiples of five return "Buzz"
     * 4) for numbers which are multiples of both three and five return "FizzBuzz"
     *
     * Example:
     *   2 =>  2
     *   3 => fizz
     *   5 => buzz
     *   4 => 4
     *  15 => fizzBuzz
     *  20 => buzz
     *  21 => fizz
     *
     */
    func fizzBuzz(for number: Int) -> FizzBuzz {
        return .number(number)
    }
    
    /**
     * Returns the factorial of the specified integer n.
     *
     * Example:
     *   1  => 1
     *   5  => 120
     *   10 => 3628800
     */
    func factorial(_ n: Int) -> Int {
        return 0
    }
    
    /**
     * Returns the sum of integer numbers between n1 and n2 (inclusive).
     *
     * Example:
     *   1,2   =>  3  ( = 1+2 )
     *   5,10  =>  45 ( = 5+6+7+8+9+10 )
     *   -1,1  =>  0  ( = -1 + 0 + 1 )
     */
    func sumOfNumbers(between firstNumber: Int, and secondNumber: Int) -> Int {
        return 0
    }
    
    /**
     * Returns true, if a triangle can be built with the specified sides a,b,c and false otherwise.
     *
     * Example:
     *   1,2,3    =>  false
     *   3,4,5    =>  true
     *   10,1,1   =>  false
     *   10,10,10 =>  true
     */
    func isTriangleWithSides(_ a: Int, _ b: Int, _ c: Int) -> Bool {
        return false
    }

    /**
     * Returns true, if point lies inside the circle, otherwise false.
     * Point is an instance of CGPoint structure.
     *
     * Circle is represented by center point (also a CGPoint instance) and radius.
     *
     * Example:
     *   { center: { x:0, y:0 }, radius:10 },  { x:0, y:0 }     => true
     *   { center: { x:0, y:0 }, radius:10 },  { x:10, y:10 }   => false
     *
     */
    func isCircleContainsPoint(_ point: CGPoint, circleRadius: Int, circleCenter: CGPoint) -> Bool {
        return false
    }
    
    /**
     * Returns the first non repeated character in the specified string otherwise returns nill.
     *
     * Example:
     *   "The quick brown fox jumps over the lazy dog" => "T"
     *   "abracadabra"                                 => "c"
     *   "entente"                                     => nil
     */
    func firstUniqueCharacter(in string: String) -> Character? {
        return nil
    }
    
    /**
     * Returns the string representation of math interval, specified by two points and
     * include / exclude flags.
     * See the details: https://en.wikipedia.org/wiki/Interval_(mathematics)
     *
     * Please take attention, that the smaller number should be the first in the notation
     *
     * Example:
     *   0, 1, true, true   => "[0, 1]"
     *   0, 1, true, false  => "[0, 1)"
     *   0, 1, false, true  => "(0, 1]"
     *   0, 1, false, false => "(0, 1)"
     * Smaller number should be the first:
     *   5, 3, true, true   => "[3, 5]"
     *
     */
    func intervalString(start: Int, end: Int, isStartIncluded: Bool, isEndIncluded: Bool) -> String {
        return ""
    }
    
    /**
     * Reverse the specified integer number (put all digits in reverse order)
     *
     * Example:
     *   12345 => 54321
     *   1111  => 1111
     *   87354 => 45378
     *   34143 => 34143
     */
    func reversedNumber(_ number: Int) -> Int {
        return 0
    }
    
    /**
     * Validates the CCN (credit card number) and return true if CCN is valid
     * and false otherwise.
     *
     * See algorithm here: https://en.wikipedia.org/wiki/Luhn_algorithm
     *
     * Example:
     *   79927398713      => true
     *   4012888888881881 => true
     *   5123456789012346 => true
     *   378282246310005  => true
     *   371449635398431  => true
     *
     *   4571234567890111 => false
     *   5436468789016589 => false
     *   4916123456789012 => false
     */
    func isCreditCardNumber(_ number: Int) -> Bool {
        return false
    }
    
    /**
     * Returns the digital root of integer:
     *   step1 : find sum of all digits
     *   step2 : if sum > 9 then goto step1 otherwise return the sum
     *
     * Example:
     *   12345 ( 1+2+3+4+5 = 15, 1+5 = 6) => 6
     *   23456 ( 2+3+4+5+6 = 20, 2+0 = 2) => 2
     *   10000 ( 1+0+0+0+0 = 1 ) => 1
     *   165536 (1+6+5+5+3+6 = 26,  2+6 = 8) => 8
     */
    func digitalRoot(of number: Int) -> Int {
        return 0
    }
    
    /**
     * Returns true if the specified string has the balanced brackets and false otherwise.
     * Balanced means that string consists entirely of pairs of opening/closing brackets
     * (in that order), none of which is missplaced.
     * Brackets include [],(),{},<>
     *
     * Example:
     *   ""             => true
     *   "[]"           => true
     *   "{}"           => true
     *   "()            => true
     *   "[[]"          => false
     *   "]["           => false
     *   "[[][][[]]]"   => true
     *   "[[][]]["      => false
     *   "{)"           = false
     *   "{[(<{[]}>)]}" = true
     */
    func isBracketsBalanced(in string: String) -> Bool {
        return false
    }
    
    /**
    * Returns the human readable string of time period specified by the start and end time.
    * The result string should be constrcuted using the folliwing rules:
    *
    * ---------------------------------------------------------------------
    *   Difference                 |  Result
    * ---------------------------------------------------------------------
    *    0 to 45 seconds           |  a few seconds ago
    *   45 to 90 seconds           |  a minute ago
    *   90 seconds to 45 minutes   |  2 minutes ago ... 45 minutes ago
    *   45 to 90 minutes           |  an hour ago
    *  90 minutes to 22 hours      |  2 hours ago ... 22 hours ago
    *  22 to 36 hours              |  a day ago
    *  36 hours to 25 days         |  2 days ago ... 25 days ago
    *  25 to 45 days               |  a month ago
    *  45 to 345 days              |  2 months ago ... 11 months ago
    *  345 to 545 days (1.5 years) |  a year ago
    *  546 days+                   |  2 years ago ... 20 years ago
    * ---------------------------------------------------------------------
    *
    * Example:
    *   2000-01-01 01:00:00, 2000-01-01 01:00:00  => "a few seconds ago"
    *   2000-01-01 01:00:00, 2000-01-01 01:00:05  => "5 minutes ago"
    *   2000-01-01 01:00:00, 2000-01-02 03:00:05  => "a day ago"
    *   2000-01-01 01:00:00, 2015-01-02 03:00:05  => "15 years ago"
    *
    */
    func timespanString(from startDate: Date, to endDate: Date) -> String {
        return ""
    }
    
    /**
     * Returns the string with n-ary (binary, ternary, etc., where n <= 10) representation of
     * the specified number.
     * See more:
     * https://en.wikipedia.org/wiki/Binary_number
     * https://en.wikipedia.org/wiki/Ternary_numeral_system
     * https://en.wikipedia.org/wiki/Radix
     *
     * Example:
     *   1024, 2  => "10000000000"
     *   6561, 3  => "100000000"
     *    365, 2  => "101101101"
     *    365, 3  => "111112"
     *    365, 4  => "11231"
     *    365, 10 => "365"
     */
    func naryString(from number: Int, radix: Int) -> String {
        return ""
    }
    
    /**
     * Returns the commom directory path for specified array of full filenames.
     *
     * Example:
     *   ["/web/images/image1.png", "/web/images/image2.png"]  => "/web/images/"
     *   ["/web/assets/style.css", "/web/scripts/app.js",  "home/setting.conf"] => ""
     *   ["/web/assets/style.css", "/.bin/mocha",  "/read.me"] => "/"
     *   ["/web/favicon.ico", "/web-scripts/dump", "/webalizer/logs"] => "/"
     */
    func commonDirectoryPath(for paths: [String]) -> String {
        return ""
    }
    
    /**
     * Returns the product of two specified matrixes.
     * See details: https://en.wikipedia.org/wiki/Matrix_multiplication
     *
     * Example:
     *   [[ 1, 0, 0 ],       [[ 1, 2, 3 ],           [[ 1, 2, 3 ],
     *    [ 0, 1, 0 ],   X    [ 4, 5, 6 ],     =>     [ 4, 5, 6 ],
     *    [ 0, 0, 1 ]]        [ 7, 8, 9 ]]            [ 7, 8, 9 ]]
     *
     *                        [[ 4 ],
     *   [[ 1, 2, 3]]    X     [ 5 ],          =>     [[ 32 ]]
     *                         [ 6 ]]
     */
    func matrixProduct(left: [[Int]], right: [[Int]]) -> [[Int]] {
        return []
    }
    
    /**
     * Returns the evaluation of the specified noughts and crosses position.
     * See the details: https://en.wikipedia.org/wiki/Tic-tac-toe
     *
     * Position is provided as an 3x3 array with the following values: x, o, none
     * Function should determine the winner in the current position according to the game rules.
     * The result can be: x, o, none
     *
     * Example:
     *
     *   [[ x,   , o ],
     *    [    ,x, o ],       => x
     *    [    ,  ,x ]]
     *
     *   [[ o, o, o ],
     *    [   ,x,   ],       =>  o
     *    [ x,   ,x ]]
     *
     *   [[ o, x, o ],
     *    [     , x ],       =>  none
     *    [ x, o, x ]]
     *
     *   [[  ,   ,  ],
     *    [  ,   ,  ],       =>  none
     *    [  ,   ,  ]]
     *
     */
    func evaluateNoughtsAndCrossesPosition(_ position: [[NoughtsAndCrossesMark]]) -> NoughtsAndCrossesMark {
        return .x
    }
}

// MARK: - Auxillary
extension ConditionsNLoopsFunctions {
    
    enum FizzBuzz: Equatable {
        case fizz
        case buzz
        case fizzBuzz
        case number(Int)
    }
    
    enum NoughtsAndCrossesMark {
        case x
        case o
        case none
    }
}
