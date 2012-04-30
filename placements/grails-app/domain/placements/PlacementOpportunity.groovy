package placements

class PlacementOpportunity {
String jobTitle
String companyName
String applications
String status
	
	static hasMany = [applications: Application]
    static constraints = {
    }
}
