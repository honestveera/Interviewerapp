class RemoveFeedbackFromInterviewer < ActiveRecord::Migration
  def change
    remove_column :interviewers, :feedback, :text
  end
end
