class CreateCalenders < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.date :dates
      t.time :times

      t.timestamps null: false
    end
  end
end
