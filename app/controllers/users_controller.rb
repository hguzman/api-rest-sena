class UsersController < ApplicationController

  def login
    user = User.find_by(email: params[:email], password: params[:password])
    if user.present?
      render json: user, status: 200
    else
      render json: {"mensaje": "No encontrado"}, status: 404
    end
  end
end
