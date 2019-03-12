class ProductOption < ApplicationRecord
  belongs_to :product

  has_attached_file :image, styles: { exact: "370x278#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
