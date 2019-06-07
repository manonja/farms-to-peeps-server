class Product < ApplicationRecord
  belongs_to :farmer
  has_many :category_products 
  has_many :categories, through: :category_products
  has_many :basket_product
  has_many :basket, through: :basket_product
end
