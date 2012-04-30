package placements

class PlacementOpportunity {
String jobTitle
String companyName
String applications
String status //needs to be linked to status table
	
	static hasMany = [applications: Application]
    static constraints = {
    }
}
