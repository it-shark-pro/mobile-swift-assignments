
import XCTest
@testable import _6_Classes_and_Structures

final class ClassesStructuresTests: XCTestCase {
    
    var csut: ClassesStructuresFunctions!
    
    lazy private var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter
    }()
    
    override func setUp() {
        super.setUp()
        csut = ClassesStructuresFunctions()
    }
    
    func testCreateStudent() {
        let student = csut.createStudent(firstName: "Alex", lastName: "Kucherov", dateOfBirth: dateFormatter.date(from: "12/04/1999")!)
        
        XCTAssertNotNil(student)
        
        guard let stud = student else { return }
        
        XCTAssertTrue(Mirror(reflecting: stud).displayStyle == .struct, "Result should be an instance of structure")
        XCTAssertEqual(stud.firstName, "Alex")
        XCTAssertEqual(stud.lastName, "Kucherov")
        XCTAssertEqual(stud.dateOfBirth, dateFormatter.date(from: "12/04/1999")!)
        XCTAssertEqual(stud.fullName, "Alex Kucherov")
    }
    
    func testJSONStringFromPersonalInfo() {
        let student = csut.createStudent(firstName: "Alex", lastName: "Kucherov", dateOfBirth: dateFormatter.date(from: "12/04/1999")!)
        
        XCTAssertNotNil(student)
        
        guard let stud = student else { return }
        
        XCTAssertEqual(csut.jsonString(from: stud), "{\"firstName\":\"Alex\",\"lastName\":\"Kucherov\",\"dateOfBirth\":\"12/04/1999\"}")
    }
    
    func testStudentFromJSON() {
        let json = ["firstName": "Alex", "lastName": "Kucherov", "dateOfBirth": "12/04/1999"]
        let student = csut.studentFromJSON(json: json)
        
        XCTAssertNotNil(student)
        
        guard let stud = student else { return }
        
        XCTAssertTrue(Mirror(reflecting: stud).displayStyle == .struct, "Result should be an instance of structure")
        XCTAssertEqual(stud.firstName, json["firstName"])
        XCTAssertEqual(stud.lastName, json["lastName"])
        XCTAssertEqual(stud.dateOfBirth, dateFormatter.date(from: json["dateOfBirth"]!)!)
        XCTAssertEqual(stud.fullName, json["firstName"]! + " " + json["lastName"]!)
    }
    
    func testSortedStudentsArray() {
        let student_1 = csut.createStudent(firstName: "Alex", lastName: "Kucherov", dateOfBirth: dateFormatter.date(from: "12/04/1999")!)
        let student_2 = csut.createStudent(firstName: "Mike", lastName: "Clumski", dateOfBirth: dateFormatter.date(from: "12/04/1999")!)
        let student_3 = csut.createStudent(firstName: "Jack", lastName: "Johnson", dateOfBirth: dateFormatter.date(from: "12/04/1996")!)
        let student_4 = csut.createStudent(firstName: "Greg", lastName: "Johnson", dateOfBirth: dateFormatter.date(from: "12/04/2000")!)
        
        XCTAssertNotNil(student_1)
        XCTAssertNotNil(student_2)
        XCTAssertNotNil(student_3)
        XCTAssertNotNil(student_4)
        
        guard let stud_1 = student_1,
              let stud_2 = student_2,
              let stud_3 = student_3,
              let stud_4 = student_4
        else {
            return
        }
        
        
//        XCTAssertEqual(csut.sortedStudentsArray(from: [stud_1, stud_2, stud_3, stud_4]), [stud_4, stud_3, stud_2, stud_1])
    }
}
