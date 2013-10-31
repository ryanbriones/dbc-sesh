helper do
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  
  def current_user=(new_current_user)
    @current_user = new_current_user
    session[:user_id] = @current_user.id
  end
  
  def logged_in?
    !current_user.nil?
  end
end