class AddRelevanceexperienceToInterviewerfeedback < ActiveRecord::Migration
  def change
    add_column :interviewerfeedbacks, :relevanceexperience, :integer
  end
end
