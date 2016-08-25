class Skillset < ActiveRecord::Base
  validates_uniqueness_of :skills
  belongs_to  :candidatedetail
  belongs_to  :interviewer
end
