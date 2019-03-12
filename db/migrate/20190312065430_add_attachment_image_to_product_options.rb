class AddAttachmentImageToProductOptions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :product_options do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :product_options, :image
  end
end
