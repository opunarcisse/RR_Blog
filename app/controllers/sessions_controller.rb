class SessionsController < ApplicationController
  def new
  end
  
  def create
    email = params[:session][:email]
    password = params[:session][:password]
    user = User.authenticate(email, password)

    if user #if user authentication is sucessful
      session[:user_id] = user.id
      flash[:notice]= " You've been logged into the Crib"
      redirect_to :root
      
    else # if wrong credentials
      flash[:error]= "wrong credentials, please try again."
      render :action => "new"
    end
  end
  
  #log out
  def destroy
    session[:user_id]=nil
    flash[:notice]="You are out of the crib"
    redirect_to :root
  end
end
