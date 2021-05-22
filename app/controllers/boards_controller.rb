class BoardsController < ApplicationController
  before_action :login_required
  def index
    @boards = Board.all.includes(:user)
  end

  private

  def login_required
    return if current_user

    flash[:danger] = 'ログインしてください'
    redirect_to login_url
  end
end
