class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
  def create
    @user = MailList.new(secure_params)
    if @user.valid?
      @user.subscribe
      flash[:notice] = "Signed up #{@user.email}."
      redirect_to root_path
    else
      #render :new
    end
  end
  private
  def secure_params
    params.require(:@user).permit(:email)
  end
end