class AddAttachmentAttachedfileToInterviewerfeedbacks < ActiveRecord::Migration
  def self.up
    change_table :interviewerfeedbacks do |t|
      t.attachment :attachedfile
    end
  end

  def self.down
    remove_attachment :interviewerfeedbacks, :attachedfile
  end
end
