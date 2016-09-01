class Interviewer < ActiveRecord::Base
  #Relation ship
  belongs_to :skillset
  #user method
  scope :interviewerdetail,->(id){where("id=?",id)}
  scope :interviewer,->(primaryid,secondaryid){where("primaryskills=? or secondaryskills=? ",primaryid,secondaryid)}
end
