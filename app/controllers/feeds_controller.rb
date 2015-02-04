class FeedsController < ApplicationController
  def search
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feeds_params)
    if @feed.save
      flash[:ticker] = @feed.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def feeds_params
    params.require(:feed).permit(:ticker)
  end



end
