
import Foundation
import CoreGraphics

class ConditionsLoopsFunctions {
    
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
    func sumBetween(_ firstNumber: Int, and secondNumber: Int) -> Int {
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
     * Smaller number has to be first :
     *   5, 3, true, true   => "[3, 5]"
     *
     */
    func intervalString(left: Int, right: Int)
    
}

// MARK: - Auxillary
extension ConditionsLoopsFunctions {
    
    enum FizzBuzz {
        case fizz
        case buzz
        case fizzBuzz
        case number(Int)
    }
}
