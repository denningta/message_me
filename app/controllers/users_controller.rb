class UsersController < ApplicationController

    def new
        @minimum_password_length = 6
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Welcome to the alpha blog #{@user.email}"
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
        
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :firstname, :lastname)
    end

end
