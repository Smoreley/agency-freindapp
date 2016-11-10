class QuestionsController < ApplicationController

  def index 
    @question  = "It is difficult to get you excited"
    @question1 = " You tend to sympathize with other people"
    @question2 = " You value justice higher than mercy"
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
