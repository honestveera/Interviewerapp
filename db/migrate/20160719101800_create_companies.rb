class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :companyname
      t.text :companyaddress
      t.string :contactperson
      t.integer :contactnumber

      t.timestamps null: false
    end
  end
end
