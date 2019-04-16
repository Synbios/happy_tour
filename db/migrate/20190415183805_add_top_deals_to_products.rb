class AddTopDealsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :deal_tag, :string
    add_column :products, :deal_stars, :integer
    add_column :products, :deal_f1, :string
    add_column :products, :deal_f2, :string
    add_column :products, :deal_f3, :string
    add_column :products, :deal_title, :string
    add_column :products, :deal_description, :string
    add_column :products, :deal_order, :integer
  end
end
