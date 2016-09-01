class Skillset < ActiveRecord::Base
  validates_presence_of :skills

  has_many  :candidatedetails
  has_many :interviewers
end
