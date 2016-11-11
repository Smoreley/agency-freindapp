class AnswersController < ApplicationController

    def create
        
        p "DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"
        params.inspect
        
        if params[:ans] == "true" 
            user_answer = true;
        elsif params[:ans] == "false"
            user_answer = false;
        end 
        
        #redirect_to get_questions_url, :notice => 'Signed in! #{user_answer}'
        
        Answer.create(user_id: params[:user_id],
            question_id: params[:question_id],
            ans: user_answer )
        
 redirect_to get_questions_url
    end

end
