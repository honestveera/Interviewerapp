class AddTeamworkToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :teamwork, :integer
  end
end
