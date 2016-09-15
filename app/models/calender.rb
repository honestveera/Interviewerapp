class Calender < ActiveRecord::Base
  scope :calender,->(interviewerid,date,status){where("interviewer_id=? and dateformat=? and status=?",interviewerid,date,status)}
end
