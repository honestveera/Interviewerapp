class CreateScheduletimes < ActiveRecord::Migration
  def change
    create_table :scheduletimes do |t|
      t.time :scheduletime

      t.timestamps null: false
    end
  end
end
