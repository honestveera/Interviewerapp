class AddTimemanagementToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :timemanagement, :integer
  end
end
