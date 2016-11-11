class QuestionsController < ApplicationController

    def index 
        @questions = Question.all
    end 

    def ask        
        # Make sure we don't repeat questions already asked
        count = 0;
        while true && count < Question.count
            count += 1;
            @question = Question.all.sample
            
            if !current_user.answers.all.exists?(@question.id)
                return @question
            end
            
        end
    end
end
