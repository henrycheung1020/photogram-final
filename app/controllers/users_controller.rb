class UsersController < ApplicationController
  skip_before_action(:authenticate_user!, { :only => [:index] })
  def home 
    redirect_to("/users")
  end

  def index 
    matching_users = User.all
    
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "users/index" })
  end

  def show 
    render({ :template => "users/show" })
  end
end
