class AnswersController < ApplicationController

    def create
        if params[:commit] == "true" 
            user_answer = true;
        elsif params[:commit] == "false"
            user_answer = false;
        end 
        p'dgdd'
        Answer.create(user_id: params[:user_id],
            question_id: params[:question_id],
            ans: user_answer )
        p'tyu'
        
        #redirect_to url_for(get_questions)
    end

end
