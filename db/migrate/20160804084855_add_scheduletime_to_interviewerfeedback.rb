class AddScheduletimeToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :scheduletime, :string
  end
end
