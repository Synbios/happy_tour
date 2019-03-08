class AddTitleToProductDates < ActiveRecord::Migration[5.1]
  def change
    add_column :product_dates, :title, :string
  end
end
