class AddSkillsToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :skills, :string
  end
end
