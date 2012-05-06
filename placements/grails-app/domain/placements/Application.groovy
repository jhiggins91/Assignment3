package placements

class Application {
String student
String placement
String status
Date timeStamp
static hasOne = [state : Status]
static belongsTo = [student : Student, placement : PlacementOpportunity]

	static constraints = {
    student()
    placement()
    status()
    timeStamp()
}
}
