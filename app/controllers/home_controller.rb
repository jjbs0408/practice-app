class HomeController < ApplicationController
  # before_action :authenticate_user!, only{:index}
  def index
  @posts = Post.all.reverse
  end
end
