class CreateProductDates < ActiveRecord::Migration[5.1]
  def change
    create_table :product_dates do |t|
      t.integer :product_id
      t.integer :number
      t.text :content

      t.timestamps
    end
  end
end
