class RemoveContactnumberFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :contactnumber, :integer
  end
end
