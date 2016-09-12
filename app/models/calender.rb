class Calender < ActiveRecord::Base

  scope :calender,->(interviewerid,date,status){where("interviewername=? and date=? and status=?",interviewerid,date,status)}
end
