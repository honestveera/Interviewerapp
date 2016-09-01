class Candidatedetail < ActiveRecord::Base
  #Validation
  has_attached_file :attachedfile, styles: {thumbnail: "60x60#"}
  validates_attachment :attachedfile, content_type: { content_type: "application/pdf" }
  # validates_presence_of :jobdescription

  #Association
  has_many  :candidateprofiles  #It means candidate schedule
  belongs_to :skillset

  #User method
  scope :candidatedetail,->(id){where("id=?",id)}
  scope :candidatestatus,->(status){where("status=?",status)}

end
