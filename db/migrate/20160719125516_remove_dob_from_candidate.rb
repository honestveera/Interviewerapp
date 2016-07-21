class RemoveDobFromCandidate < ActiveRecord::Migration
  def change
    remove_column :candidates, :DOB, :datetime
  end
end
