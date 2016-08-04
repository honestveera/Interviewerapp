class AddJobtitleToCandidatedetail < ActiveRecord::Migration
  def change
    add_column :candidatedetails, :jobtitle, :string
  end
end
