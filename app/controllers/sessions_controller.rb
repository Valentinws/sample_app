class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(password: params[:session][:password])
      reset_session
      log_in user 
      redirect_to user 
    else 
      flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  end 
  
  def destroy
  end 
end
