class AddAttachmentImageToLocationSlides < ActiveRecord::Migration[5.1]
  def self.up
    change_table :location_slides do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :location_slides, :image
  end
end
