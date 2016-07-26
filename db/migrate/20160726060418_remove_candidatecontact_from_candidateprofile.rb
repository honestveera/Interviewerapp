class RemoveCandidatecontactFromCandidateprofile < ActiveRecord::Migration
  def change
    remove_column :candidateprofiles, :candidatecontact, :integer
  end
end
