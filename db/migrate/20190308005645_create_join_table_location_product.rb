class CreateJoinTableLocationProduct < ActiveRecord::Migration[5.1]
  def change
    create_join_table :locations, :products, id: false do |t|
      t.index [:location_id, :product_id]
      t.index [:product_id, :location_id]
    end
  end
end
