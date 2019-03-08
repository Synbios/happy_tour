class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :chinese
      t.string :english
      t.text :description

      t.timestamps
    end
  end
end
