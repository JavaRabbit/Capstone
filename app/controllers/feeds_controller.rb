class FeedsController < ApplicationController
  def search
    @feed = Feed.new
  end

  def create
    redirect_to root_path
  end

end
