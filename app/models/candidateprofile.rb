class Candidateprofile < ActiveRecord::Base
#Validation
 #validates_presence_of :candidatename,:candidateemail,:candidatecontact,:skills,:interviewername,:intervieweremail,:scheduledate,:scheduletime,:jobdescription
 #validates_format_of :candidateemail,:intervieweremail,:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

 #Association
 has_one :interviewerfeedback
 belongs_to :candidatedetail

 #User method
 scope :candidateprofile,->(id){where("id=?",id)}
 scope :candidateschedulestatus,->(status){where("status=?",status)}

 def self.updateprofilestatus id
   a=Candidatedetail.find_by(id:id)
   a.update(status:"schedule")
 end

end
