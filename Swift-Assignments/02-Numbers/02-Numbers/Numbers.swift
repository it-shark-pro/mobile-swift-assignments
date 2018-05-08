
import Foundation
import CoreGraphics

class NumbersFunctions {
    
    /**
     * Returns an area of a rectangle given by width and heigth.
     *
     * Example:
     *   5, 10 => 50
     *   5, 5  => 25
     */
    func rectArea(width: Int, height: Int) -> Int {
        return 0
    }
    
    /**
     * Returns a circumference of circle given by radius.
     *
     * Example:
     *   5    => 31.41592653589793
     *   3.14 => 19.729201864543903
     *   0    => 0
     */
    func circumference(radius: Double) -> Double {
        return 0
    }
    
    /**
     * Returns an average of two given numbers.
     *
     * Example:
     *   5, 5  => 5
     *  10, 0  => 5
     *  -3, 3  => 0
     */
    func average(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        return 0
    }
    
    /**
     * Returns a distance beetween two points by cartesian coordinates.
     * Each point is represented by CGPoint structure, which consists of x and y values,
     * which are accessible via '.' operator, e.g. start.x or start.y. The same applies to other CG-prefixed structures.
     *
     * Example:
     *   (0,0) (0,1)    => 1
     *   (0,0) (1,0)    => 1
     *   (-5,0) (10,-10) => 18.027756377319946
     */
    func distance(from start: CGPoint, to end: CGPoint) -> Double {
        return 0
    }
    
    /**
     * Returns a root of linear equation a*x + b = 0 given by coefficients a and b.
     *
     * Example:
     *   5*x - 10 = 0    => 2
     *   x + 8 = 0       => -8
     *   5*x = 0         => 0
     */
    func linearEquationRoot(a: Int, b: Int) -> Double {
        return 0
    }
    
    /**
     * Returns an angle (in radians) between two vectors in Cartesian plane
     * See details https://en.wikipedia.org/wiki/Euclidean_vector#Representations
     *
     * Example:
     *   (1,0) (0,1)     => π/2
     *   (0,1) (0,-1)    => π
     *   (0,-1) (1,0)    => π/2
     *   (0,1) (0,1)     => 0
     *   (0,1) (1,2)     => 0
     */
    func angle(between firstVector: CGVector, and secondVector: CGVector) -> Double {
        return 0
    }
    
    /**
     * Returns a last digit of a integer number.
     *
     * Example:
     *   100     => 0
     *    37     => 7
     *     5     => 5
     *     0     => 0
     */
    func lastDigit(from number: Int) -> Int {
        return 0
    }
    
    /**
     * Returns a number by given string representation.
     *
     * Example:
     *    '100'     => 100
     *     '37'     => 37
     * '-525.5'     => -525.5
     */
    func number(from string: String) -> Double {
        return 0
    }
    
    /**
     * Returns a diagonal length of the rectangular parallelepiped given by its base area and height.
     *
     * Example:
     *   1,1,1   => 1.7320508075688772
     *   3,3,3   => 5.196152422706632
     *   1,2,3   => 3.741657386773941
     */
    func parallelepipedDiagonal(baseArea: CGSize, height: Double) -> Double {
        return 0
    }
    
    /**
     * Returns the number rounded to specified power of 10.
     *
     * Example:
     *   1234, 0  => 1234
     *   1234, 1  => 1230
     *   1234, 2  => 1200
     *   1234, 3  => 1000
     *   1678, 0  => 1678
     *   1678, 1  => 1680
     *   1678, 2  => 1700
     *   1678, 3  => 2000
     */
    func roundNumber(_ number: Int, toPowerOf10: Int) -> Int {
        return 0
    }
    
    /**
     * Returns true is the number is prime; otherwise false.
     * See: https://en.wikipedia.org/wiki/Primality_test
     *
     * Example:
     *   4 => false
     *   5 => true
     *   6 => false
     *   7 => true
     *   11 => true
     *   12 => false
     *   16 => false
     *   17 => true
     */
    func isNumberPrime(_ number: Int) -> Bool {
       return false
    }
}
