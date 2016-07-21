class AddCompanyemailToInterviewers < ActiveRecord::Migration
  def change
    add_column :interviewers, :companyemail, :string
  end
end
