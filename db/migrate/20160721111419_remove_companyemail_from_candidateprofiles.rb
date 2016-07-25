class RemoveCompanyemailFromCandidateprofiles < ActiveRecord::Migration
  def change
    remove_column :candidateprofiles, :companyemail, :string
  end
end
