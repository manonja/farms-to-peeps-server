class UsersController < ApplicationController
    
    
    
    def index
        users = User.all
        render json: users
      end
    
      def new
        user = User.new
      end
    
      def show
        user = User.find_by(id: params[:id])
        if user
          render json: user
        else
          render json: {error: "This user does not exist?"}, status: 404
        end
      end
    
      def create
        username = params[:email]
        password = params[:password_digest]
    
        user = User.find_or_create_by(email)
    
        if user
          render json: user
        else
          render json: {error: "Erorr creating farmer"}, status: 400
        end
      end
    
      private
      def user_params
        params.require(:user).permit(:id, :username, :isAdmin, :password)
      end
end
