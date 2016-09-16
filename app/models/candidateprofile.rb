class Candidateprofile < ActiveRecord::Base
#Validation
 #validates_presence_of :candidatename,:candidateemail,:candidatecontact,:skills,:interviewername,:intervieweremail,:scheduledate,:scheduletime,:jobdescription
 #validates_format_of :candidateemail,:intervieweremail,:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

 #Association
 has_one :interviewerfeedback
 belongs_to :candidatedetail
 belongs_to :calender

 #User method
 scope :candidateprofile,->(id){where("id=?",id)}
 scope :candidateschedulestatus,->(status){where("status=?",status)}

 def self.updateprofilestatus id
   a=Candidatedetail.find_by(id:id)
   b=a.id
   c=a.candidatename
   a.update(status:"schedule")
 end
 #  a=i.gsub(/[\[\"]/,'').gsub(/]/,'')
 #  a=i.gsub(/[\[\]"]/,'')

   def self.updatecalender interviewerid,interviewtime,interviewdate
     #1.Get interviewerid,interviewtime and date
       id=interviewerid
       timeslot1=interviewtime
       dates=interviewdate
      #2.pass above valuses Calender
       c=Calender.where("interviewer_id= ? AND dateformat = ?", id,dates).to_a
      #3.time get from calender table
       ct= c[0].timeslot.gsub(/[\[\]"]/,'').split(",")
      #4.Delete timeslot
       ct.delete(timeslot1)
       c[0].update(timeslot:ct)
       c[0].update(status:"new") if c[0].timeslot.length>=10
       c[0].update(status:"schedule") if c[0].timeslot.length<=10
   end

end
