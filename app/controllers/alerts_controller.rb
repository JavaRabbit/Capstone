class AlertsController < ApplicationController
  def all
    @user = current_user
  end
end
