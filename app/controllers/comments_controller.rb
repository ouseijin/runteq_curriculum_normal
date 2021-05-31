class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @comment.board_id = params[:board_id]
    if @comment.save
      flash[:success] = 'コメントを作成しました'
      redirect_to board_path(@comment.board_id)
    else
      flash[:danger] = 'コメントを作成できませんでした'
      redirect_to board_path(@comment.board_id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
