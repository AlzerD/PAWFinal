class LeaguesController < ApplicationController
  
  def overall
    @users = User.all.order('points DESC, id') 
  end
end
