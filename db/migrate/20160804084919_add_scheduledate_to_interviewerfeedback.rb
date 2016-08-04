class AddScheduledateToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :scheduledate, :string
  end
end
