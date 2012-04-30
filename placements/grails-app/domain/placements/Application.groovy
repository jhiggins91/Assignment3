package placements

class Application {
String student
String placement
String status
Date timeStamp
static hasOne = [state : Status]
    static constraints = {
    }
}
