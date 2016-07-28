class AddAssertivenessToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :assertiveness, :integer
  end
end
