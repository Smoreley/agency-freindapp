class AnswersController < ApplicationController

    def create
        if params[:commit] == "true" 
            user_answer = true;
        elsif params[:commit] == "false"
            user_answer = false;
        end 

        Answer.create(user_id: params[:id],
            question_id: params[:id],
            ans: user_answer )
        
        redirect_to url_for(questions)
        
    end

end
