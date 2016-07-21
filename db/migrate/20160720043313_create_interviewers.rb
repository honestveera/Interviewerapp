class CreateInterviewers < ActiveRecord::Migration
  def change
    create_table :interviewers do |t|
      t.string :interviewername
      t.string :interviewercompany

      t.timestamps null: false
    end
  end
end
