class Skillset < ActiveRecord::Base
  validates_presence_of :skills
  belongs_to  :candidatedetail
  belongs_to  :interviewer
end
