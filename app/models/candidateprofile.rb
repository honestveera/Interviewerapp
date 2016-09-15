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
      c=Calender.find_by(interviewer_id:id,timeslot:timeslot1,dateformat:dates)
       if  c.timeslot.length >= 10
        #3.time get from calender table
           ct= c.timeslot.gsub(/[\[\]"]/,'').split(",")
        #4.Delete timeslot
           nt= ct.delete(timeslot1)
        #5.update
           c.update(timeslot:nt)

      else
        #3.time get from calender table
           ct=c.timeslot.gsub(/[\[\]"]/,'')
        #4.Delete timeslot
           nt= ct.delete(timeslot1)
        #5.update
           c.update(timeslot:nt)
           if  c.timeslot==""
            c.update(status:"schedule")
           end
      end
   end

end
