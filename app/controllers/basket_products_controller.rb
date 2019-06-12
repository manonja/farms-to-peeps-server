class BasketProductsController < ApplicationController
    
  def remove
    basketProduct = BasketProduct.find_by(product_id: params[:product_id], basket_id: params[:basket_id])
    if basketProduct
      basketProduct.destroy
      render json: {message: "Relationship destroyed"}
    else
      render json: {error: "Could not destroy"}, status: 404
    end
  end

  def index
    basketProducts = BasketProduct.all
    render json: basketProducts
  end
    
  def new
    basketProduct = BasketProduct.new
  end

  def show
    basketProduct = BasketProduct.find_by(id: params[:id])
    if basketProduct
      render json: basketProduct
    else
      render json: {error: "This basketProduct does not exist?"}, status: 404
    end
  end

  def create    
    basketProduct = BasketProduct.create(product_id: params[:product_id], basket_id: params[:basket_id])

    if basketProduct
      render json: basketProduct
    else
      render json: {error: "Erorr creating product"}, status: 400
    end
  end

  def destroy
    basketProduct = BasketProduct.find_by(basketProduct_params)
    if basketProduct
      basketProduct.destroy
      render json: {message: "Relationship destroyed"}
    else
      render json: {error: "Could not destroy"}, status: 404
    end
  end

  private
  def basketProduct_params
    params.require(:basketProduct).permit(:product_id, :basket_id)
  end
end
