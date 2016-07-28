class AddLeadershipToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :leadership, :integer
  end
end
