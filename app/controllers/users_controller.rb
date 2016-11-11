class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :correct_user?, :except => [:index]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end
    
    def match
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    private 
    
    def user_params
       params.require(:user).permit(:first_name, :last_name, :email) 
    end
end
