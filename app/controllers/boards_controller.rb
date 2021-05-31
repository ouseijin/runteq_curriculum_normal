class BoardsController < ApplicationController
  def index
    @boards = Board.all.includes(:user).order(created_at: :desc)
  end

  def new
    @board = Board.new
  end

  def create
    @board = current_user.boards.build(board_params)
    if @board.save
      flash[:success] = '掲示板を作成しました'
      redirect_to boards_path
    else
      flash.now[:danger] = '掲示板を作成できませんでした'
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
    @comment = current_user.comments.new
    @comments = @board.comments.includes(:user).order(created_at: :desc)
  end

  private

  def board_params
    params.require(:board).permit(:title, :body, :board_image, :board_image_cache)
  end
end
