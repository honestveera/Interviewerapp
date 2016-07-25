class RemovePassworddigestFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :password_digest, :string
  end
end
