# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  protected
  #check if the user can edit/create content
  def authorize
    if session[:user_id].nil? #not logged in?
      flash[:error] = "you are log in to edit content!"
      #session[:referrer] = request.request_uri
      redirect_to login_path
    end
    
  end
end
