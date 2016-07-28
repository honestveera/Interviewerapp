class AddGoalsettingsToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :goalsettings, :integer
  end
end
