class AddIntervieweridToCalender < ActiveRecord::Migration
  def change
    add_column :calenders, :interviewer_id, :string
  end
end
