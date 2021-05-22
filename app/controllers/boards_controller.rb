class BoardsController < ApplicationController
  before_action :login_required
  def index
    @boards = current_user.boards.all.includes(:user)
  end

  private
  def login_required
    unless current_user
      flash[:danger] = 'ログインしてください' 
      redirect_to login_url 
    end
  end

end