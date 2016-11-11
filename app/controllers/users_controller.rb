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
        
#        users_answers = Answers.where(user_id: current_user.id)
        users_answers = @user.answers.all
        
        your_matches = Hash.new
        
        users_answers.each do |ans|
            all_answered = Answer.where(question_id: ans.question_id)
            
            all_answered.each do |allans|
               
                if allans.user_id != @user.id
                    if ans.ans === allans.ans
                        if !your_matches.key?(allans.user_id)
                            your_matches[allans.user_id] = 1
                        elsif
                            your_matches[allans.user_id] += 1
                        end
                    elsif
                        if !your_matches.key?(allans.user_id)
                            your_matches[allans.user_id] = 0
                        elsif
                            your_matches[allans.user_id] -= 1
                        end            
                    end
                end
            end
        end
        
        p "testing"
        p your_matches
        
    end

    def edit
        @user = User.find(params[:id])
    end

    private 
    
    def user_params
       params.require(:user).permit(:first_name, :last_name, :email) 
    end
end
