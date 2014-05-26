# Class written by Alan Dunne after following tutorials by Marc Clifton [Available @ http://www.codeproject.com/Articles/575551/User-Authentication-in-Ruby-on-Rails#AdministratingUsers78]
class HomeController < ApplicationController
  skip_before_filter :authenticate_user
end