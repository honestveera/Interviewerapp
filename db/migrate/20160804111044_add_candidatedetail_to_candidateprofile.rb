class AddCandidatedetailToCandidateprofile < ActiveRecord::Migration
  def change
    add_reference :candidateprofiles, :candidatedetail, index: true, foreign_key: true
  end
end
