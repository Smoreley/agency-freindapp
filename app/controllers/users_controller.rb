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
        
                p "testingALLL THE THINGS!!!!"
        p User.all
        p your_matches
        p "COUNT THING ALL THIGNS"
        p your_matches.count
#        p your_matches[@match.id]
        
        
        if (!your_matches.empty?)
            @match = User.find(your_matches.key(your_matches.values.max))
            @percent = (((your_matches[@match.id]*1.0)/(users_answers.count *1.0))*100).round
        end
        
    end

    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        
        if @user.update_attributes(user_params)
            redirect_to current_user
        else
            render 'edit'    
        end
    end

    private 
    
    def user_params
       params.require(:user).permit(:first_name, :last_name, :email, :about, :birthday) 
    end
end
