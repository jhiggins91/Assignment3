package placements

class Status {
String code
String sescription
static hasMany = [applications: Application]
    static constraints = {
    }
}
