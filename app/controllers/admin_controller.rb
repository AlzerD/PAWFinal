# Class written by Alan Dunne after following tutorials by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
class AdminController < ApplicationController
  before_filter :authenticate_admin
  
  def users
    @users = User.all.order(:id) 
  end

  def delete_user
    if params[:id] == current_user.id.to_s
      flash.now[:error] = 'You cannot delete yourself!'
      @users = User.all
      render :action => :users
    else
      User.find_by_id(params[:id]).delete
      @users = User.all
      render :action => :users
    end
  end  
end