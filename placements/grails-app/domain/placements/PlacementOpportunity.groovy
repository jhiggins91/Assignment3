package placements

class PlacementOpportunity {
String placementID
String jobTitle
String companyName
String applications
String status //needs to be linked to status table
	
	static hasMany = [applications: Application]

	static constraints = {
    placementID()
    jobTitle()
    companyName()
    applications()
    status()
}
}
