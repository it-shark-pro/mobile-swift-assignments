
import Foundation

class DatesFunctions {
    
    /**
     * Parses a rfc2822 string date representation into date value
     * For rfc2822 date specification refer to : http://tools.ietf.org/html/rfc2822#page-14
     *
     * Example:
     *    "December 17, 1995 03:24:00"       => Date()
     *    "Tue, 26 Jan 2016 13:48:02 GMT"    => Date()
     *    "Sun, 17 May 1998 03:00:00 GMT+01" => Date()
     */
    func date(from rfc2822: String) -> Date? {
        return Date()
    }
    
    /**
     * Parses an ISO 8601 string date representation into timestamp value
     * For ISO 8601 date specification refer to : https://en.wikipedia.org/wiki/ISO_8601
     *
     * Example:
     *    "2016-01-19T16:07:37+00:00"    => Date()
     *    "2016-01-19T08:07:37Z"         => Date()
     */
    func timeInterval(from iso8601: String) -> TimeInterval? {
        return nil
    }
    
    /**
     * Returns true if specified date is leap year and false otherwise
     * Please find algorithm here: https://en.wikipedia.org/wiki/Leap_year#Algorithm
     *
     * Example:
     *    1900/1/1    => false
     *    2000/1/1    => true
     *    2001/1/1    => false
     *    2012/1/1    => true
     *    2015/1/1    => false
     */
    func isDateLeapYear(_ date: Date) -> Bool {
        return false
    }
    
    /**
     * Returns the string represention of the timespan between two dates.
     * The format of output string is "HH:mm:ss"
     *
     * Example:
     *    01/01/2000 10:00:00,  01/01/2000 11:00:00     => "01:00:00"
     *    01/01/2000 10:00:00,  01/01/2000 10:30:00     => "00:30:00"
     *    01/01/2000 10:00:00,  01/01/2000 10:00:20     => "00:00:20"
     *    01/01/2000 10:00:00,  01/01/2000 15:20:10     => "05:20:10"
     */
    func timeSpan(from startDate: Date, to endDate: Date) -> String {
        return ""
    }
    
    /**
     * Returns the angle (in radians) between the hands of an analog clock for the
     * specified Greenwich time.
     * If you have problem with solution please read: https://en.wikipedia.org/wiki/Clock_angle_problem
     *
     * Example:
     *    05/02/2016 00:00      => 0
     *    05/03/2016 03:00      => .pi / 2
     *    05/03/2016 18:00      => .pi
     *    05/03/2016 21:00      => .pi / 2
     */
    func angleBetweebClockHands(date: Date) -> Double {
        return 0
    }
}
