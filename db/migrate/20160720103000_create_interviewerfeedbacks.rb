class CreateInterviewerfeedbacks < ActiveRecord::Migration
  def change
    create_table :interviewerfeedbacks do |t|
      t.string :interviewername
      t.string :candidatename
      t.text :feedback
      t.string :status

      t.timestamps null: false
    end
  end
end
