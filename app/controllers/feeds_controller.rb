class FeedsController < ApplicationController
  def search
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(feeds_params)
    if @feed.save
      # These two lines are for mailing the user
      # when they added a stock to their feed
      @user = User.find_by(id: session[:user_id])
      UserMailer.stockAdd_confirmation(@user).deliver

      @uf = UserFeed.new(feed_id: @feed.id, user_id: session[:user_id])
      @uf.save
      flash[:ticker] = @feed.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def delete
    @feed = Feed.find_by(id: params[:id])
  end

  def destroy
    @feed = Feed.find_by(id: params[:id])
    @feed.destroy
    redirect_to root_path
  end

  def watchlist
    @user = User.find_by(id: session[:user_id])
  end

  private

  def feeds_params
    params.require(:feed).permit(:ticker)
  end



end
