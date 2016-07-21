class AddCompanyemailToCandidateprofile < ActiveRecord::Migration
  def change
    add_column :candidateprofiles, :companyemail, :string
  end
end
