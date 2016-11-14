class QuestionsController < ApplicationController

    def index 
        @questions = Question.all
    end 

    def ask
        
                  p "THIS IS AWESOME!!!!!!!!!!!!!!!!!!!!!!"
            p current_user.answers.all.where("created_at >= ?", Time.zone.now.beginning_of_day)
        
        p "THE END IS NOW!"
        
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
