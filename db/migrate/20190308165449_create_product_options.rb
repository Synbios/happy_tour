class CreateProductOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :product_options do |t|
      t.integer :product_id
      t.text :description
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :line4
      t.string :line5
      t.string :line6
      t.string :line7

      t.timestamps
    end
  end
end
