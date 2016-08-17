class PageController < ApplicationController
  
  def index
  	if current_user
  		redirect_to user_profile_path(current_user.id)
  	end
  end

  def show
  	
  	if current_user
  		@user = User.find_by_email(current_user.email)
  	end

  end
end
