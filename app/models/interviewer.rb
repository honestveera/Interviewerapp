class Interviewer < ActiveRecord::Base
  scope :interviewerdetail,->(interviewername){where("interviewername=?",interviewername)}

end
