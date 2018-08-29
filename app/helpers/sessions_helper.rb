module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    
    # ↑
    # if @current_user
    #   return @current_user
    # else
    #   @current_user = User.find_by(id: session[:user_id])
    #   return @current_user
    # end
  end
  
  def logged_in?
    !!current_user
  end
end
