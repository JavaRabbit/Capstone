class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(subject_params)
    @account.user_id = current_user.id
    if @account.save
      flash[:name] = @account.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    @account = Account.find_by(id: params[:id])
    if @account == nil
      redirect_to root_path
    end
  end

  private
  def subject_params
    params.require(:account).permit(:name, :description, :startBalance, :user_id)
  end
end
