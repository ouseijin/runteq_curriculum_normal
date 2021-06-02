class CommentsController < ApplicationController
  def create
    comment = current_user.comments.build(comment_params)
    if comment.save
      flash[:success] = 'コメントを作成しました'
    else
      flash[:danger] = 'コメントを作成できませんでした'
    end
    redirect_to board_path(comment.board)
  end

  private

  def comment_params
    params.require(:comment).permit(:body).merge(board_id: params[:board_id])
  end
end
