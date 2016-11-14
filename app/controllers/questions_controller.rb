class QuestionsController < ApplicationController

    def index 
        @questions = Question.all
    end 

    def ask        
        Question.all.each do |quest|
            
            @answered_today = current_user.answers.where("created_at >= ?", Time.zone.now.beginning_of_day)
            
            if !@answered_today.exists?(question_id: quest.id)
                @question = quest
               return @question 
            end            
        end
        @question = nil
    end
end
