class RemoveScheduledateFromInterviewerfeedback < ActiveRecord::Migration
  def change
    remove_column :interviewerfeedbacks, :Scheduledate, :string
  end
end
