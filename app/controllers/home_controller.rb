class HomeController < ApplicationController
  def index
    @blogs=Blog.all
    @user=User.find(current_user.id)
  end

  def chat

  end

  def videochat

  end

  def forums

  end

  def confession

  end

end
