class AddJobtitleToCandidateprofile < ActiveRecord::Migration
  def change
    add_column :candidateprofiles, :jobtitle, :string
  end
end
