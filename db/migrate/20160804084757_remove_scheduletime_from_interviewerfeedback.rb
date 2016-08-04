class RemoveScheduletimeFromInterviewerfeedback < ActiveRecord::Migration
  def change
    remove_column :interviewerfeedbacks, :Scheduletime, :string
  end
end
