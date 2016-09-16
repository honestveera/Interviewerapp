class Calender < ActiveRecord::Base
  has_many :candidateprofiles
  scope :calender,->(interviewerid,date,status){where("interviewer_id=? and dateformat=? and status=?",interviewerid,date,status)}
  scope :calenderdata,->(interviewerid,date){where("interviewer_id=? and dateformat=? ",interviewerid,date)}
end
