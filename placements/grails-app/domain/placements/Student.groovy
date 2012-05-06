package placements

class Student {
String studentID
String name
String courseCode
String notes
String applications
	
	static hasMany = [applications: Application]

	static constraints = {
    studentID()
    name()
    courseCode()
    notes()
    applications()
}
}
