class Interviewerfeedback < ActiveRecord::Base
   validates_presence_of :interviewername,:candidatename,:feedback,:status
  
end
