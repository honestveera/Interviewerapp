class AddCompanynameToCandidateprofile < ActiveRecord::Migration
  def change
    add_column :candidateprofiles, :companyname, :string
  end
end
