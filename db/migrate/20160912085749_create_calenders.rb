class CreateCalenders < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.string :date
      t.string :time
      t.string :interviewername

      t.timestamps null: false
    end
  end
end
