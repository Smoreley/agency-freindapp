class QuestionsController < ApplicationController

    def index 
        @questions = Question.all
    end 

    def ask
        
        Question.all.each do |quest|
            if !current_user.answers.exists?(question_id: quest.id)
                @question = quest
               return @question 
            end
            
        end
        @question = nil
    end
end
