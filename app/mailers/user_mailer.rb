class UserMailer < ActionMailer::Base
  default from: "worldcup2014paw@gmail.com"
  
    def welcome_email(user)
      @user = user
      @url = 'http://pick-a-winner.herokuapp.com/'
      @site_name = "World Cup 2014 Pick A Winner"
      mail(:to => user.email, :subject => "Welcome to the World Cup 2014 Pick A Winner Competition")
    end

end
