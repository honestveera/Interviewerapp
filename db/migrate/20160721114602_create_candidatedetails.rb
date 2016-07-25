class CreateCandidatedetails < ActiveRecord::Migration
  def change
    create_table :candidatedetails do |t|
      t.string :candidatename
      t.string :candidateemail
      t.decimal :candidatecontact
      t.string :yoe
      t.string :skills
      t.text :jobdescription

      t.timestamps null: false
    end
  end
end
