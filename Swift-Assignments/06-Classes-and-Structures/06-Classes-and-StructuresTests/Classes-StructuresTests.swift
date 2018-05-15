
import XCTest
@testable import _6_Classes_and_Structures

final class ClassesStructuresTests: XCTestCase {
    
    var sut: ClassesStructuresFunctions!
    
    lazy private var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter
    }()
    
    override func setUp() {
        super.setUp()
        sut = ClassesStructuresFunctions()
    }
    
    func testCreateStudent() {
        let student = sut.createStudent(firstName: "Alex", lastName: "Kucherov", dateOfBirth: dateFormatter.date(from: "12/04/1999")!)
        
        let isEqualToStudent = student.map { Mirror(reflecting: $0).displayStyle == .struct &&
                                            $0.firstName == "Alex" && $0.lastName == "Kucherov" &&
                                            $0.dateOfBirth == dateFormatter.date(from: "12/04/1999") &&
                                            $0.fullName == "Alex Kucherov" } ?? false
        
        XCTAssertTrue(isEqualToStudent)
    }
    
    func testJSONStringFromPersonalInfo() {
        let student = sut.createStudent(firstName: "Alex", lastName: "Kucherov", dateOfBirth: dateFormatter.date(from: "12/04/1999")!)
        
        let isEqualToJson = student.map { sut.jsonString(from: $0) == "{\"firstName\":\"Alex\",\"lastName\":\"Kucherov\",\"dateOfBirth\":\"12/04/1999\"}" } ?? false
        
        XCTAssertTrue(isEqualToJson)
    }
    
    func testStudentFromJSON() {
        let json = ["firstName": "Alex", "lastName": "Kucherov", "dateOfBirth": "12/04/1999"]
        let student = sut.studentFromJSON(json: json)
        
        let isEqualToStudent = student.map { Mirror(reflecting: $0).displayStyle == .struct &&
                                            $0.firstName == json["firstName"]! && $0.lastName == json["lastName"]! &&
                                            $0.dateOfBirth == dateFormatter.date(from: json["dateOfBirth"]!) &&
                                            $0.fullName == json["firstName"]! + " " + json["lastName"]!} ?? false
        
        XCTAssertTrue(isEqualToStudent)
    }
    
    func testSortedStudentsArray() {
        let student_1 = CISStudent(firstName: "Alex", secondName: "Antonovich", lastName: "Kucherov", dateOfBirth: Date())
        let student_2 = CISStudent(firstName: "Mike", secondName: "Michailovich", lastName: "Clumski", dateOfBirth: Date())
        let student_3 = CISStudent(firstName: "Jack", secondName: "Jozefovich", lastName: "Johnson", dateOfBirth: Date())
        let student_4 = CISStudent(firstName: "Greg", secondName: "Markovich", lastName: "Johnson", dateOfBirth: Date())
        let student_5 = CISStudent(firstName: "Greg", secondName: "Albertovich", lastName: "Johnson", dateOfBirth: Date())
        
        XCTAssertEqual(sut.sortedStudentsArray(from: [student_1, student_2, student_3, student_4, student_5]),
                       [student_2, student_5, student_4, student_3, student_1])
    }
}
