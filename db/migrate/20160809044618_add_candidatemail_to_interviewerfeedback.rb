class AddCandidatemailToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :candidatemail, :string
  end
end
