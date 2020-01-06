class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?

    def current_user
      @current_user ||= User.find_by_id(session[:user]) if session[:user]
    end

     def logged_in?
       current_user != nil
     end

    def require_user
        if !logged_in?
          flash[:error] = "You must be logged in to perform that action"
          redirect_to root_pathd
        end
    end

end
