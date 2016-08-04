class RemoveOverallassesmentFromInterviewerfeedback < ActiveRecord::Migration
  def change
    remove_column :interviewerfeedbacks, :overallassesment, :integer
  end
end
