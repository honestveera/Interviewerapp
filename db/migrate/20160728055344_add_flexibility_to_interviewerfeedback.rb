class AddFlexibilityToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :flexibility, :integer
  end
end
