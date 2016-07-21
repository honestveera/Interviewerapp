class AddCompanyemailToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :companyemail, :string
  end
end
