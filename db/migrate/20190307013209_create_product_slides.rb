class CreateProductSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :product_slides do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end
