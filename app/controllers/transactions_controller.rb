class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
    @transaction.account_id = current_user.id
  end

  def create
    @transaction.account_id = Transaction.new(subject_params)
    @transaction.account_id = current_user.account_id
  end


  private

  def subject_params
    params.require(:transaction).permit(:account_id, :feed_id, :buyPrice, :numBought,
    :buyDate, :sellPrice, :sellDate, :netChange)
  end
end
