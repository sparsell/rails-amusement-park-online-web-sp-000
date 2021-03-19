class SessionsController < ApplicationController

    def new
    end
    
    def create 
        # binding.pry
        @user = User.find_by(name: params[:user][:name])
        # binding.pry
        if @user && @user.authenticate(params[:user][:password])
            # binding.pry 
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            flash[:message] = "Login not successful. Please try again."
            render 'new'
        end
    end

    def destroy
        session.delete :user_id
        redirect_to root_path
    end
end