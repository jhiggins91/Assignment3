import placements.Status 
class BootStrap {

    def init = { servletContext ->
    
def applied = new Status(code:'001', description:'Applied For Placement').save();

def invited = new Status(code:'002', description:'Invited For Interview').save();

def notInvited= new Status(code:'003', description:'Not Invited For Interview').save();

def notOffered = new Status(code:'004', description:'Not Offered Placement').save();

def accepted = new Status(code:'005', description:'Accepted').save();

def rejected = new Status(code:'006', description:'Rejected').save();

    }
    def destroy = {
    }
}


