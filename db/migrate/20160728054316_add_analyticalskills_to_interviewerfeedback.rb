class AddAnalyticalskillsToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :analyticalskills, :integer
  end
end
