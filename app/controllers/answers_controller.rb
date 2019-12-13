class AnswersController < ApplicationController
  def creat
    @post = Post.find(params[:post_id])
    @answer = @post.answers.create(answer_params)
    redirect_to post_path(@post)
  end
 
  private
    def comment_params
      params.require(:answer).permit( :body)
    end
end
