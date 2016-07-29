class Interviewer < ActiveRecord::Base
  scope :interviewerdetail,->(id){where("id=?",id)}

end
