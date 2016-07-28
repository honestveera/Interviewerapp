class AddTechnicalskillsToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :technicalskills, :integer
  end
end
