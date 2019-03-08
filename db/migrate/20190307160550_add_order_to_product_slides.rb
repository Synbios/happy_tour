class AddOrderToProductSlides < ActiveRecord::Migration[5.1]
  def change
    add_column :product_slides, :order, :integer
  end
end
