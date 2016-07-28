class AddOverallassesmentToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :overallassesment, :integer
  end
end
