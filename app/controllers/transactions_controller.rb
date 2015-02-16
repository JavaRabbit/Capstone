class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
    @transaction.account_id = current_user.id
    @feed = Feed.find_by(id: params[:id])
    @transaction.buyPrice = params[:price]



  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def all
    @user.id = current_user.id
    @feed = Feed.find_by(id: params[:id])
  end

  def show
    @transaction = Transaction.find_by(id: params[:id])
  end


  private

  def transaction_params
    params.require(:transaction).permit(:account_id, :feed_id, :buyPrice, :numBought,
    :buyDate, :sellPrice, :sellDate, :netChange)
  end
end
