class AddAttachmentAttachedfileToCandidatedetails < ActiveRecord::Migration
  def self.up
    change_table :candidatedetails do |t|
      t.attachment :attachedfile
    end
  end

  def self.down
    remove_attachment :candidatedetails, :attachedfile
  end
end
