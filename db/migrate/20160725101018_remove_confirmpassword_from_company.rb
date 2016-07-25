class RemoveConfirmpasswordFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :confirmpassword, :string
  end
end
