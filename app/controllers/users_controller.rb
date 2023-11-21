class UsersController < ApplicationController
  def home 
    redirect_to("/users")
  end

  def index 

    render({ :template => "users/index" })
  end
end
