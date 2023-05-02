class HomeController < ApplicationController
  def index
    @blogs=Blog.all
  end
  def chat
    
  end
end
