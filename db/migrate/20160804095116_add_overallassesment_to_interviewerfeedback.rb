class AddOverallassesmentToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :overallassesment, :double
  end
end
