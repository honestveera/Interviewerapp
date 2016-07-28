class AddCommunicationToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :communication, :integer
  end
end
