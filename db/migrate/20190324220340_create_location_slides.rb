class CreateLocationSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :location_slides do |t|
      t.integer :location_id
      t.integer :order

      t.timestamps
    end
  end
end
