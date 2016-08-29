class Interviewer < ActiveRecord::Base
  scope :interviewerdetail,->(id){where("id=?",id)}
  scope :interviewer,->(primaryid,secondaryid){where("primaryskills=? or secondaryskills=? ",primaryid,secondaryid)}
end
