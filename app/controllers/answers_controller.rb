class AnswersController < ApplicationController
  def index
    @answers = Answer.all.order(created_at: :desc)
    render json: @answers
  end

   def show
   # Fetch candidate from candidate_id   
     @candidate = Candidate.find_by(params[:candidate_id])
   # Fetch the answer with average & nonzero rating of candidate
     @answer = @candidate.answers.find_by(params[:id])
     render json: @answer
   end

end
