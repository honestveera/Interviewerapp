class AddUsernameToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :username, :string
  end
end
