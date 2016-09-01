class Interviewerfeedback < ActiveRecord::Base
   validates_presence_of :interviewername,:candidatename,:status
   has_attached_file :attachedfile, styles: {thumbnail: "60x60#"}
   validates_attachment :attachedfile, content_type: { content_type: "application/pdf" }

   #Association Relationship
   belongs_to :candidateprofile
   

   def self.updateschedulestatus id
     a=Candidateprofile.find_by(id:id)
     a.update(status:"interview")
   end

end
