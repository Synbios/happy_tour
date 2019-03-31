class Location < ApplicationRecord
  has_many :location_slides, dependent: :destroy
  has_and_belongs_to_many :products
end
