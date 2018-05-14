
import Foundation

final class ClassesStructuresFunctions {
    
    /**
     * Returns Student structure instance which conforms to PersonalInfo protocol
     * with firstName, lastName, dateOfBirth properties and fullName computed property.
     *
     * Example:
     *    let student = Student(firstName: "Alex", lastName: "Kucherov", dateOfBirth: Date())
     *    student.fullName            // => "Alex Kucherov"
     *
     */   
    func createStudent(firstName: String, lastName: String, dateOfBirth: Date) -> PersonalInfo? {
        return nil
    }
    
    /**
     * Returns the JSON representation of instance conforming to PersonalInfo protocol
     *
     * Example:
     *    Student(firstName: "Alex", lastName: "Kucherov", dateOfBirth: Date()) =>
     *     "{"firstName":"Alex","lastName":"Kucherov","dateOfBirth":"12/04/1999"}"
     *
     */
    func jsonString(from personalInfo: PersonalInfo) -> String? {
        return nil
    }
    
    /**
     * Returns the Student instance (which you designed in the first task) from JSON dictionary
     *
     * Example:
     *      ["firstName": "Alex", "lastName": "Kucherov", "dateOfBirth": "12/04/1999"] =>
     *    Student(firstName: "Alex", lastName: "Kucherov", dateOfBirth: Date())
     *
     */
    func studentFromJSON(json: [String: Any]) -> PersonalInfo? {
        return nil
    }
    
    /**
     * Returns an array of sorted Student instances by lastName in ascending order.
     * If two instances have the same value of lastName property, they are compared by firstName values
     *
     * Example:
     *     [Student(firstName: "Alex", lastName: "Kucherov", dateOfBirth: Date()),
     *      Student(firstName: "Mike", lastName: "Clumski", dateOfBirth: Date()),
     *      Student(firstName: "Jack", lastName: "Johnson", dateOfBirth: Date()),
     *      Student(firstName: "Greg", lastName: "Johnson", dateOfBirth: Date())]
     *                                  =>
     *     [Student(firstName: "Mike", lastName: "Clumski", dateOfBirth: Date()),
     *      Student(firstName: "Greg", lastName: "Johnson", dateOfBirth: Date()),
     *      Student(firstName: "Jack", lastName: "Johnson", dateOfBirth: Date()),
     *      Student(firstName: "Alex", lastName: "Kucherov", dateOfBirth: Date())]
     *
     */
    func sortedStudentsArray(from array: [PersonalInfo]) -> [PersonalInfo] {
        return []
    }
}

protocol PersonalInfo {
    var firstName: String { get set }
    var lastName: String { get set }
    var dateOfBirth: Date { get set }
    
    var fullName: String { get }
}
