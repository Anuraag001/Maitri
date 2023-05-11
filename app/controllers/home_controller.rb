class HomeController < ApplicationController
  def index
    @blogs=Blog.all
  end
  
  def chat
    
  end

  def videochat

  end

  def forums

  end

end
