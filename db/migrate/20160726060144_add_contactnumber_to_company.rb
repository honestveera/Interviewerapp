class AddContactnumberToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :contactnumber, :decimal
  end
end
