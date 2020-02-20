class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # Return User appointments
    @appointments = @user.appointments
  end


  def index
    @users = User.all
  end


end
