class UsersController < ApplicationController

  def show
    user = User.new(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)
    # byebug
    if user.valid?
      # user = user
      token = JWT.encode({ user_id: user.id }, secret(user), 'HS256')
      render json: { user: user, token: token }
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.permit(:email, :password, :admin)
  end

end
