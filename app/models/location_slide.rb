class LocationSlide < ApplicationRecord
  belongs_to :location

  has_attached_file :image, styles: {thumb: "100x100>", exact: "370x270#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
