class AddJobknowledgeToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :jobknowledge, :integer
  end
end
