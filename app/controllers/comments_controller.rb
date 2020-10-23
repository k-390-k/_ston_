class CommentsController < ApplicationController
  def  create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
        redirect_to @recipe
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end

