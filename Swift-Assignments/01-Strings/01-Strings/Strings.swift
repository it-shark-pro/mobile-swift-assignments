import Foundation

public class StringFunctions {
    /**
     * Returns the result of concatenation of two strings.
     *
     * Examples:
     *   - 'aa', 'bb' => 'aabb'
     *   - 'aa', ''   => 'aa'
     *   - '',  'bb'  => 'bb'
     */
    public func concat(_ value1: String, with value2: String) -> String {
        return ""
    }

    /**
     * Returns the length of given string.
     *
     * Examples:
     *   - 'aaaaa' => 5
     *   - 'b'     => 1
     *   - ''      => 0
     *   - nil     => 0
     */
    public func length(of value: String?) -> Int {
        return 0
    }

    /**
     * Returns the result of string template and given parameters firstName and lastName.
     * Please do not use concatenation, use string interpolation.
     *
     * Examples:
     *   - 'John','Doe'      => 'Hello, John Doe!'
     *   - 'Chuck','Norris'  => 'Hello, Chuck Norris!'
     */
    public func greetingTemplate(using firstName: String, and lastName: String) -> String {
        return ""
    }

    /**
     * Extracts a name from template string 'Hello, First_Name Last_Name!'.
     *
     * Examples:
     *   - 'Hello, John Doe!' => 'John Doe'
     *   - 'Hello, Chuck Norris!' => 'Chuck Norris'
     */
    public func extractName(from greeting: String) -> String {
        return ""
    }

    /**
     * Returns a first char of the given string.
     *
     *
     * Examples:
     *   - 'John Doe'  => 'J'
     *   - 'cat'       => 'c'
     *   - ''          => nil
     */
    public func firstCharacter(in value: String?) -> String? {
        return nil
    }

    /**
     * Removes a leading and trailing whitespace characters from string.
     *
     *
     * Examples:
     *   '  Abracadabra'    => 'Abracadabra'
     *   'cat'              => 'cat'
     *   '\tHello, World! ' => 'Hello, World!'
     */
    public func trimLeadingAndTrailingWhitespace(in value: String) -> String {
        return ""
    }

    /**
     * Returns a string that repeated the specified number of times.
     *
     * Examples:
     *   - 'A', 5     => 'AAAAA'
     *   - 'cat', 3   => 'catcatcat'
     */
    public func makeRepetition(_ value: String, times: Int) -> String {
        return ""
    }

    /**
     * Remove the first occurrence of string inside another string
     *
     * Examples:
     *   - 'To be or not to be', 'not'  => 'To be or to be'
     *   - 'I like legends', 'end'      => 'I like legs',
     *   - 'ABABAB','BA'                => 'ABAB'
     */
    public func removeFirstOccurrence(in value: String, occurence: String) -> String {
        return ""
    }

    /**
     * Remove the first and last angle brackets from tag string
     *
     * Examples:
     *   - '<dictionary>' => 'dictionary'
     *   - '<key>'        => 'key'
     *   - 'invalid'      => nil
     */
    public func removeBrackets(in tag: String) -> String? {
        return nil
    }

    /**
     * Converts all characters of the specified string into the upper case
     *
     * Examples:
     *  - 'Thunderstruck'               => 'THUNDERSTRUCK'
     *  - 'abcdefghijklmnopqrstuvwxyz'  => 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
     */
    public func convertToUpperCase(_ value: String) -> String {
        return ""
    }

    /**
     * Extracts e-mails from single string with e-mails list delimeted by semicolons

     *
     * Examples:
     *   - 'angus.young@gmail.com;brian.johnson@hotmail.com;bon.scott@yahoo.com' => ['angus.young@gmail.com', 'brian.johnson@hotmail.com', 'bon.scott@yahoo.com']
     *   - 'info@gmail.com' => ['info@gmail.com']
     */
    public func extractEmails(from value: String) -> [String] {
        return []
    }

    /**
     * Returns the string representation of rectangle with specified width and height
     * using pseudograhic chars
     *
     * Example:
     *
     *  (6,4) =>  '┌────┐\n'+
     *            '│    │\n'+
     *            '│    │\n'+
     *            '└────┘\n'
     *
     *  (2,2) =>  '┌┐\n'+
     *            '└┘\n'
     *
     *  (12,3) =>  '┌──────────┐\n'+
     *             '│          │\n'+
     *             '└──────────┘\n'
     *
     */
    public func makeRectangle(width: Int, height: Int) -> String {
        return ""
    }

    /**
     * Encode specified string with ROT13 cipher
     * See details: https://en.wikipedia.org/wiki/ROT13
     *
     * Example:
     *
     *   - 'hello' => 'uryyb'
     *   - 'Why did the chicken cross the road?' => 'Jul qvq gur puvpxra pebff gur ebnq?'
     *   - 'Gb trg gb gur bgure fvqr!' => 'To get to the other side!'
     *   - 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' => 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
     *
     */
    public func encodeUsingRot13(_ value: String) -> String {
        return ""
    }

    /**
     * Returns true if the value is string; otherwise false.
     *
     * Example:
     *   []     => false
     *   nil    => false
     *   5      => false
     *   'test' => true
     */
    public func isString(_ value: Any?) -> Bool {
        return false
    }

    /**
     * Returns playid card id.
     *
     * Playing cards inittial deck inclides the cards in the following order:
     *
     *  'A♣','2♣','3♣','4♣','5♣','6♣','7♣','8♣','9♣','10♣','J♣','Q♣','K♣',
     *  'A♦','2♦','3♦','4♦','5♦','6♦','7♦','8♦','9♦','10♦','J♦','Q♦','K♦',
     *  'A♥','2♥','3♥','4♥','5♥','6♥','7♥','8♥','9♥','10♥','J♥','Q♥','K♥',
     *  'A♠','2♠','3♠','4♠','5♠','6♠','7♠','8♠','9♠','10♠','J♠','Q♠','K♠'
     *
     * (see https://en.wikipedia.org/wiki/Standard_52-card_deck)
     * Function returns the zero-based index of specified card in the initial deck above.
     *
     * Example
     *   - 'A♣' => 0
     *   - '2♣' => 1
     *   - '3♣' => 2
     *   -   ...
     *   - 'Q♠' => 50
     *   - 'K♠' => 51
     */
    public func card(by id: Int) -> String {
        return ""
    }
}
