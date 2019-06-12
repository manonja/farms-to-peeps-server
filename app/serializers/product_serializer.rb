class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :farmer_id, :url_img, :category

  belongs_to :category
  
  class CategorySerializer < ActiveModel::Serializer
    attributes :id, :name
  end
  
end
