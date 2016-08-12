class AddAddcommentToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :addcomment, :text
  end
end
