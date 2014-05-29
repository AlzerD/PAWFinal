class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user, :except => [:sign_in, :login, :register, :new_user, :signed_out]
  # helper_method written by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
  helper_method :current_user
  def current_user
    # Note: we want to use "find_by_id" because it's OK to return a nil.
    # If we were to use User.find, it would throw an exception if the user can't be found.
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id] 
    @current_user ||= User.find_by_authentication_token(cookies[:auth_token]) if cookies[:auth_token] && @current_user.nil?
      @current_user
    end
  
  # authenticate_user written by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
  def authenticate_user
    if current_user.nil?
        flash[:error] = 'You must be signed in to view that page'
        redirect_to :root 
    end 
  end
  
  def authenticate_admin
    if current_user.admin != true
      flash[:error] = 'Not a valid page'
        redirect_to :root 
    end 
  end    
  
  
  
end