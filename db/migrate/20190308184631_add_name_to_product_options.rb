class AddNameToProductOptions < ActiveRecord::Migration[5.1]
  def change
    add_column :product_options, :name, :string
  end
end
