class PagesController < ApplicationController
  def home
  end
    @posts = Blog.all
  def about
  end

  def contact
  end
end
