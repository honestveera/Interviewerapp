class RemoveFeedbackFromInterviewerfeedback < ActiveRecord::Migration
  def change
    remove_column :interviewerfeedbacks, :feedback, :text
  end
end
