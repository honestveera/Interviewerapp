class AddIntervieweridToCandidateprofile < ActiveRecord::Migration
  def change
    add_column :candidateprofiles, :interviewer_id, :string
  end
end
