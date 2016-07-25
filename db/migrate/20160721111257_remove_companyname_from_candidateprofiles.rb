class RemoveCompanynameFromCandidateprofiles < ActiveRecord::Migration
  def change
    remove_column :candidateprofiles, :companyname, :string
  end
end
