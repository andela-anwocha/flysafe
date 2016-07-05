class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      UserMailer.welcome(@user.id).deliver_now
      flash[:notice] = "Account Created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def past_bookings
    @bookings = User.find(params[:user_id]).bookings
  end


  private
  def user_params
    params.permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation, :gender)
  end
end
