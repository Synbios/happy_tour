class Product < ApplicationRecord
  has_many :product_slides, dependent: :destroy
  has_many :product_options, dependent: :destroy
  has_many :product_dates, dependent: :destroy
  has_many :product_points, dependent: :destroy

  CATEGORIES = [
    ['经典线路-温哥华周边', '经典线路-温哥华周边'],
    ['经典线路-落基山脉', '经典线路-落基山脉'],
    ['经典线路-加东', '经典线路-加东'],
    ['经典线路-美国', '经典线路-美国'],
    ['特色旅游-加拿大', '特色旅游-加拿大'],
    ['特色旅游-环游世界', '特色旅游-环游世界'],
    ['海岛度假', '海岛度假']
  ]

  has_and_belongs_to_many :locations
end
