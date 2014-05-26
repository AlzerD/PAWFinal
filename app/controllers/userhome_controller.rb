class UserhomeController < ApplicationController
  before_filter :authenticate_user
end