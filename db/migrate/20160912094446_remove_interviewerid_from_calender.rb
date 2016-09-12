class RemoveIntervieweridFromCalender < ActiveRecord::Migration
  def change
    remove_column :calenders, :interviewer_id, :integer
  end
end
