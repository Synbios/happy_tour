class CreateProductPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :product_points do |t|
      t.integer :product_id
      t.string :text

      t.timestamps
    end
  end
end
