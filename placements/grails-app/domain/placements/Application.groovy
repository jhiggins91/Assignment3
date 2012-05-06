package placements

class Application {
String student
String placement
String status
Date timeStamp
static hasOne = [status : Status]
static belongsTo = [student : Student, placement : PlacementOpportunity]

	static constraints = {
    student()
    placement()
    status()
    timeStamp()
}
}
