class AddPersonalityToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :personality, :integer
  end
end
