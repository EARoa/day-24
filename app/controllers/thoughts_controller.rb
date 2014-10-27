class ThoughtsController < ApplicationController

  before_action do
    if session[:user_id].present?
    else
      redirect_to sign_in_path
    end
  end


  def index
    @users = User.all
    @thoughts = current_user.thoughts.order("created_at desc")
    @thought = Thought.new
  end

  def post
    @post = Thought.new(params.require(:thought).permit(:deep_thought))
    @post.user = current_user
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

end
