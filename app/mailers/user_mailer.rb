class UserMailer < ActionMailer::Base
  default from: 

  def registration_confirmation(user)
    @user = user
    #mail(:to => user.email, :subject => "Registered!!!")
  end


  def stockAdd_confirmation(user)
    @user = user
    #mail(:to => user.email, :subject => "You Added a stock")
  end
end
