class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to products_path  #コメント送信後は、一つ前のページへリダイレクトさせる。
    else
      redirect_to products_path   #同上
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
