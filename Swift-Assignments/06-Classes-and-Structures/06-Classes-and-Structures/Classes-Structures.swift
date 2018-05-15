
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
     * Returns an array of sorted CISStudent objects by lastName in ascending order.
     * If two objects have the same value of lastName property, they are compared by firstName values.
     * If two objects have the same lastName and firstName, they are compared by secondName values.
     *
     * Example:
     *     [CISStudent(firstName: "Alex", secondName: "Antonovich", lastName: "Kucherov", dateOfBirth: Date()),
     *      CISStudent(firstName: "Mike", secondName: "Michailovich", lastName: "Clumski", dateOfBirth: Date()),
     *      CISStudent(firstName: "Jack", secondName: "Jozefovich", lastName: "Johnson", dateOfBirth: Date()),
     *      CISStudent(firstName: "Greg", secondName: "Markovich", lastName: "Johnson", dateOfBirth: Date()),
     *      CISStudent(firstName: "Greg", secondName: "Albertovich", lastName: "Johnson", dateOfBirth: Date())]
     *                                  =>
     *     [CISStudent(firstName: "Mike", secondName: "Michailovich", lastName: "Clumski", dateOfBirth: Date()),
     *      CISStudent(firstName: "Greg", secondName: "Albertovich", lastName: "Johnson", dateOfBirth: Date()),
     *      CISStudent(firstName: "Greg", secondName: "Markovich", lastName: "Johnson", dateOfBirth: Date()),
     *      CISStudent(firstName: "Jack", secondName: "Jozefovich", lastName: "Johnson", dateOfBirth: Date()),
     *      CISStudent(firstName: "Alex", secondName: "Antonovich", lastName: "Kucherov", dateOfBirth: Date())]
     *
     */
    func sortedStudentsArray(from array: [CISStudent]) -> [CISStudent] {
        return []
    }
}

// MARK: - Auxillary

protocol PersonalInfo {
    var firstName: String { get set }
    var lastName: String { get set }
    var dateOfBirth: Date { get set }
    
    var fullName: String { get }
}

class CISStudent: PersonalInfo {
    
    var firstName: String = ""
    var secondName = ""
    var lastName: String = ""
    
    var dateOfBirth: Date = Date()
    
    var fullName: String {
        return firstName + " " + secondName + " " + lastName
    }
    
    init(firstName: String, secondName: String, lastName: String, dateOfBirth: Date) {
        self.firstName = firstName
        self.secondName = secondName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
    }
}

// MARK: - Equatable

extension CISStudent: Equatable {
    
    static func == (lhs: CISStudent, rhs: CISStudent) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.secondName == rhs.secondName &&
               lhs.lastName == rhs.lastName && lhs.dateOfBirth == rhs.dateOfBirth
    }
}
