class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def about 
    render "static_contents/about.html"
  end 
  def contact
    render "static_contents/contact.html"
  end 

  protected 

    def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path #, :notice => 'if you want to add a notice'
     end
  end
end
