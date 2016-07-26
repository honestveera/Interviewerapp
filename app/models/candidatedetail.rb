class Candidatedetail < ActiveRecord::Base
  has_attached_file :attachedfile, styles: {thumbnail: "60x60#"}
  validates_attachment :attachedfile, content_type: { content_type: "application/pdf" }
  scope :candidatedetail,->(candidatename){where("candidatename=?",candidatename)}

end
