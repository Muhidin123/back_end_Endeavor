class Api::V1::UsersController < ApplicationController

    def index
      user = User.all
      render json: {user: user, token: token}
    end


    def create
      puts user_params
        @user = User.create(user_params)
        if @user.valid?
          token = issue_token(@user)
          render json: { user: UserSerializer.new(@user), token: token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end
 
    
      private


      def user_params
        params.require(:user).permit(:username, :password, :bio, :avatar, :first_name, :last_name, :email)
      end


end