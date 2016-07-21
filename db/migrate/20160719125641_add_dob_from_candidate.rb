class AddDobFromCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :DOB, :date
  end
end
