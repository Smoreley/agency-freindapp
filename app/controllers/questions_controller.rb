class QuestionsController < ApplicationController

  def index 
    @question ="It is difficult to get you excited"
    @question1 = " You tend to sympathize with other people"
    @question2 = " You value justice higher than mercy"
  end 

  def ask
    p "esdcds"
    p params
    params.permit(:question,:value)
    #Question.find(params[:question])
    @question = Question.all.sample
  end
end
