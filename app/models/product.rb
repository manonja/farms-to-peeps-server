class Product < ApplicationRecord
  belongs_to :farmer
  has_one :category
  has_many :basket_product
  has_many :basket, through: :basket_product
end
