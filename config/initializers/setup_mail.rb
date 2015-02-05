ActionMailer::Base.smtp_settings ={
  :address => "smtp.gmail.com",
  :port   => 587,
  :domail => "gmail.com",
  :user_name  => "kbonnie",
  :password => "immortalit7",
  :authentication => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
