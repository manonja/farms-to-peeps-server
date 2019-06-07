class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products
      end
    
      def new
        product = Product.new
      end
    
      def show
        product = Product.find_by(id: params[:id])
        if product
          render json: product
        else
          render json: {error: "This product does not exist?"}, status: 404
        end
      end
    
      def create
        id = params[:id]
    
        product = Product.find_by(id)
    
        if product
          render json: product
        else
          render json: {error: "Erorr creating product"}, status: 400
        end
      end
    
      def destroy
        product = Product.find_by(product_params)
        if product
          product.destroy
          render json: {message: "Meme destroyed"}
        else
          render json: {error: "Could not destroy"}, status: 404
        end
      end
    
      private
      def product_params
        params.require(:product).permit(:id, :name, :price, :quantity, :url, :farmer_id)
      end
end
