# Class written by Alan Dunne after following tutorials by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
class HomeController < ApplicationController
  before_filter :authenticate_user, :except => [:index]  
  
  def check_if_picked
    @match_picks = MatchPick.where(:userID == session[:user_id])
    puts match_picks
  end
  
  
end