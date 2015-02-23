class AlertsController < ApplicationController
  def all
    @user = current_user
  end

  def new
    @alert = Alert.new
  end


  def create
    @alert = Alert.new(alert_params)
    if @alert.save
      redirect_to root_path
    else
      redirect_to root_path
    end


  end


  private

  def alert_params
    params.require(:alert).permit(:high,:low, :sent, :alertable_id, :alertable_type)
  end

end
