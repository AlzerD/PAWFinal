class ApplicationController < ActionController::Base
  protect_from_forgery
  # helper_method written by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
  helper_method :current_user
  def current_user
    # Note: we want to use "find_by_id" because it's OK to return a nil.
    # If we were to use User.find, it would throw an exception if the user can't be found.
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id] 
  end
  
  # authenticate_user written by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
  def authenticate_user
    if current_user
      if current_user.admin!=true
        flash[:error] = 'Sorry but you do not have access to that page.'
        redirect_to :root
      end      
    else
      flash[:error] = 'Gerrup outta that ya sneaky pup ya'
      redirect_to :root
    end 
  end  
  
end