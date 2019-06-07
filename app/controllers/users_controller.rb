class UsersController < ApplicationController
    
    # def user_type
    #     #get the params from fetch 
    #     if user_type === 'farmer'

    #     else 
            
    # end
    
    def signin
        # find user then authenticate
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
          render json: {token: issue_token(id: user.id)}
        else
          render json: {error: 'user/password combo not found'}, status: 400
        end
      end
    
      def signup
        # find user then authenticate
        user = User.create(email: params[:email], password: params[:password])

        # puts user
        # byebug
        if user 
          render json: user
        else
          render json: {error: 'User/password combo not found'}, status: 400
        end
      end
       
      def validate 
        user = get_current_user
        if user
          render json: {email: user.email}
        else
          render json: {error: 'invalid user'}, status: 404
        end
      end
    
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
        email = params[:email]
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
    params.require(:user).permit(:id, :email, :isAdmin, :password)
    end
end
