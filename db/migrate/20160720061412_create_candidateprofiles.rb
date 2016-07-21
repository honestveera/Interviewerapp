class CreateCandidateprofiles < ActiveRecord::Migration
  def change
    create_table :candidateprofiles do |t|
      t.string :candidatename
      t.string :candidateemail
      t.integer :candidatecontact
      t.string :skills
      t.text :YOE
      t.string :interviewername
      t.string :intervieweremail
      t.string :scheduledate
      t.string :scheduletime
      t.text :jobdescription

      t.timestamps null: false
    end
  end
end
