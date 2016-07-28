class AddCommitementtaskToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :commitementtask, :integer
  end
end
