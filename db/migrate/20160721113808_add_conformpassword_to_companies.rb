class AddConformpasswordToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :conformpassword, :string
  end
end
