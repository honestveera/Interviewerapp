class AddSkillsToInterviewers < ActiveRecord::Migration
  def change
    add_column :interviewers, :skills, :string
  end
end
