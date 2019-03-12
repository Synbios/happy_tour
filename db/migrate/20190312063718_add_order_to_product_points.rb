class AddOrderToProductPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :product_points, :order, :integer
  end
end
