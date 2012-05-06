import placements.Status
import placements.Student
import placements.PlacementOpportunity
class BootStrap {

    def init = { servletContext ->
    
def applied = new Status(code:'001', description:'Applied For Placement').save();

def invited = new Status(code:'002', description:'Invited For Interview').save();

def notInvited= new Status(code:'003', description:'Not Invited For Interview').save();

def notOffered = new Status(code:'004', description:'Not Offered Placement').save();

def accepted = new Status(code:'005', description:'Accepted').save();

def rejected = new Status(code:'006', description:'Rejected').save();

def student1 = new Student(studentID:'1', name:'Jon Higgins', courseCode: '12', notes:'Very handsome', applications: '0').save();

def student2 = new Student(studentID:'2',name:'James Hudson', courseCode: '13', notes:'Not very handsome', applications: '0').save();

def student3 = new Student(studentID:'3',name:'Matt Jackson', courseCode: '12', notes:'Very angry', applications: '0').save();

def placement1 = new PlacementOpportunity(placementID:'1', jobTitle:'IT Technician', companyName: 'SHU', applications:'0', status: 'Open').save();

def placement2 = new PlacementOpportunity(placementID:'2', jobTitle:'Software Developer', companyName: 'SDL', applications:'0', status: 'Open').save();

def placement3 = new PlacementOpportunity(placementID:'3', jobTitle: 'Web Developer', companyName: 'NHS', applications:'0', status: 'Open').save();

    }
    def destroy = {
    }
}


