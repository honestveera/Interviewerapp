class Skillset < ActiveRecord::Base
  belongs_to  :candidatedetail
  belongs_to  :interviewer
end
