
class UsersController < ApplicationController
  before_action :set_user, only: [:destroy]

  def index
    @users = User.all
  end

  def create
  end

  def destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :active)
    end

end
