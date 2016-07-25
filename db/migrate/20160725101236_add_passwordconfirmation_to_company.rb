class AddPasswordconfirmationToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :password_confirmation, :string
  end
end
