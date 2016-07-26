class AddCandidatecontactToCandidateprofile < ActiveRecord::Migration
  def change
    add_column :candidateprofiles, :candidatecontact, :decimal
  end
end
