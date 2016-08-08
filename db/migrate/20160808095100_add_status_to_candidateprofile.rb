class AddStatusToCandidateprofile < ActiveRecord::Migration
  def change
    add_column :candidateprofiles, :status, :string
  end
end
