class AddStatusToCalender < ActiveRecord::Migration
  def change
    add_column :calenders, :status, :string
  end
end
