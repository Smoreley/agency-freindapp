class QuestionsController < ApplicationController

    def index 
        @questions = Question.all
    end 

    def ask
    # p "esdcds"
    # p params
    #  @parms_answer = params.permit(:question,:value)
    # p "444drtftvh"
    # p @new_params_answer = @parms_answer[:value]
    # p 'gjhbhjbhj'
    # p @Answer_ans = Answer.find_by(ans: false || true)
    # p"dddx"


    # if @new_params_answer == @Answer_ans 
    # p 'tfghjk'

    # end
    #Question.find(params[:question])
    @question = Question.all.sample
    end
end
