class AddTimesToCalender < ActiveRecord::Migration
  def change
    add_column :calenders, :times, :string
  end
end
