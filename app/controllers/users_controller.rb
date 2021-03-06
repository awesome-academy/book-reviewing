class UsersController < ApplicationController
  before_action :load_user, only: %i(show)

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "welcome"
      redirect_to @user
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit User::USER_PARAMS
    end

    def load_user
      @user = User.find_by id: params[:id]
      return if @user
      flash[:none] = t "none"
      redirect_to root_path
    end
end
