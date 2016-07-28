class AddCreativityToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :creativity, :integer
  end
end
