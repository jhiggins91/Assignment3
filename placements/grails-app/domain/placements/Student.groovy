package placements

class Student {
String name
String courseCode
String notes
String applications
	
	static hasMany = [applications: Application]
    static constraints = {
    }
}
