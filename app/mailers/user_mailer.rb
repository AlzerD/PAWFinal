class UserMailer < ActionMailer::Base
  default from: "worldcup2014paw@gmail.com"
  
    def welcome_email(user)
      @user = user
      @url = 'http://pick-a-winner.herokuapp.com/'
      @site_name = "World Cup 2014 Pick A Winner"
      mail(:to => user.email, :subject => "Welcome to the World Cup 2014 Pick A Winner Competition")
    end
  
    def reset_password_email(user)
      @user = user
      @password_reset_url = 'http://alzervm-107901.euw1-2.nitrousbox.com/password_reset?' + @user.password_reset_token
      mail(:to => user.email, :subject => 'Password Reset Instructions.')
    end

end
