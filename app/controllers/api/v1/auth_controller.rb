class Api::V1::AuthController < ApplicationController

    def create
      user = User.find_by(username: params[:username]) 
  
      if user && user.authenticate(params[:password])
          payload = { user_id: user.id }
          token = JWT.encode(payload, "secret", 'HS256')
          render json: { user: {id: user.id, username: user.username, name: user.first_name ,token: token}}

      else
        render json: { error: 'Invalid username or password.' }, status: 401
      end
    end

    def show
      if !token
        render json: {error: "invalid token user credentials"}, status: 401
      else
        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode(token, "secret" , true, { algorithm: 'HS256' })
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)
        render json: { user: {id: user.id, username: user.username, name: user.first_name , token: token}}
      end
    end
end
