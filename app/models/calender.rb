class Calender < ActiveRecord::Base
  has_many :candidateprofiles
  scope :calender,->(interviewerid,date,status){where("interviewer_id=? and dateformat=? and status=?",interviewerid,date,status)}
  scope :calenderdata,->(interviewerid,date,time){where("interviewer_id=? and dateformat=? and timeslot=?",interviewerid,date,time)}
end
