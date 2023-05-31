class HomeController < ApplicationController

  def index
    @blogs=Blog.all
    @user=User.find(current_user.id)
    @comment=Comment.new
  end

  def view

  end

  def videochat

  end

  def forums

  end

  def confession

  end

  def save_comment
   @comment = Comment.new(title: params[:comment][:title])
   @comment.user=User.find(current_user.id)

  if @comment.save
    # Handle successful save
    redirect_to home_index_path, notice: 'Comment saved successfully!'
 else
   redirect_to home_confession_path
  end

end



end
