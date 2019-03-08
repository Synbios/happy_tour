class AddAttachmentImageToProductSlides < ActiveRecord::Migration[5.1]
  def self.up
    change_table :product_slides do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :product_slides, :image
  end
end
