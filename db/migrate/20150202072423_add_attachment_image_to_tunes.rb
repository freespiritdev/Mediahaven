class AddAttachmentImageToTunes < ActiveRecord::Migration
  def self.up
    change_table :tunes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tunes, :image
  end
end
