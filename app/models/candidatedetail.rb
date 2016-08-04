class Candidatedetail < ActiveRecord::Base
  #Validation
  has_attached_file :attachedfile, styles: {thumbnail: "60x60#"}
  validates_attachment :attachedfile, content_type: { content_type: "application/pdf" }
  #Association
  has_many  :candidateprofiles
  #User method
  scope :candidatedetail,->(id){where("id=?",id)}
  scope :candidatestatus,->(status){where("status=?",status)}


end
