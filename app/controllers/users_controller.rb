class UsersController < ApplicationController
    def index
        farmers = Farmer.all
        render json: farmers
      end
    
      def new
        farmer = Farmer.new
      end
    
      def show
        farmer = Farmer.find_by(id: params[:id])
        if farmer
          render json: farmer
        else
          render json: {error: "This farmer does not exist?"}, status: 404
        end
      end
    
      def create
        username = params[:email]
        password = params[:password_digest]
    
        farmer = Farmer.find_or_create_by(email)
    
        if user
          render json: farmer
        else
          render json: {error: "Erorr creating farmer"}, status: 400
        end
      end
    
      private
      def farmer_params
        params.require(:farmer).permit(:id, :name, :farm, :email, :phone, :password)
      end
end
