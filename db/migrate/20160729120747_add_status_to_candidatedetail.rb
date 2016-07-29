class AddStatusToCandidatedetail < ActiveRecord::Migration
  def change
    add_column :candidatedetails, :status, :string
  end
end
