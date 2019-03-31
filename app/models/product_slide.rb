class ProductSlide < ApplicationRecord

  belongs_to :product

  has_attached_file :image, styles: { large: "1140x740>", thumb: "100x100>", exact: "1140x740#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
