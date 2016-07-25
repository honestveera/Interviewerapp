class RemoveConformpasswordFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :conformpassword, :string
  end
end
