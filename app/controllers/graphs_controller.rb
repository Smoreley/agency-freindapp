class GraphsController < ApplicationController
    def index 
    
    end
    
    def data
        temp = Array.new
        User.all.each do |use|
            temp.push(use.answers.where("created_at >= ?", Time.zone.now.beginning_of_day).count)
        end
        
        respond_to do |format|
        format.json {
#            render :json => [1,2,3,4,5]
            render :json => temp
        }
        end
    end
end
