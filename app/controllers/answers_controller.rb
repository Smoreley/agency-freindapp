class AnswersController < ApplicationController



def create
if params[:commit] == "true" 
elsif params[:commit] == "false"
end 

  
Answer.create(user_id: params[:id],
 question_id: params[:id],
 ans: true )


end

end
