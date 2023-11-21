class UsersController < ApplicationController
  skip_before_action(:authenticate_user!, { :only => [:index] })
  def home 
    redirect_to("/users")
  end

  def index 
    
    render({ :template => "users/index" })
  end
end
