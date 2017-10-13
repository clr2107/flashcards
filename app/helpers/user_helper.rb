def current_user
  @current_user ||=User.find_by(id: session[:user_id])
end

def logged_in?
  !!user_loggedin
end

def require_user
  redirect '/users/login' unless logged_in?
end
