class Product < ApplicationRecord
  has_many :product_slides, dependent: :destroy
  has_many :product_options, dependent: :destroy
  has_many :product_dates, dependent: :destroy
  has_many :product_points, dependent: :destroy

  has_and_belongs_to_many :locations
end
