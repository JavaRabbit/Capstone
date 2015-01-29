class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(subject_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"

    else
      render "new"
    end
  end


  private

  def subject_params
    params.require(:user).permit(:email, :password, :password_digest)
  end
end
