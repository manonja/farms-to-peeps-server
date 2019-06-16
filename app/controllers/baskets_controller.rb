class BasketsController < ApplicationController
  def index
    baskets = Basket.all
    render json: baskets
  end

  def new
    Basket.new
  end

  def show
    basket = Basket.find_by(id: params[:id])
    if basket
      render json: basket
    else
      render json: { error: "This basket does not exist?" }, status: 404
    end
  end

  def create
    basket = Basket.find_or_create_by(basket_params)

    if basket
      render json: basket
    else
      render json: { error: "Erorr creating basket" }, status: 400
    end
  end

  def destroy
    basket = Basket.find_by(basket_params)
    if basket
      basket.destroy
      render json: { message: "basket destroyed" }
    else
      render json: { error: "Could not destroy" }, status: 404
    end
  end

  private

  def basket_params
    params.require(:basket).permit(:customer_id)
  end
end
