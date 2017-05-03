class CandidatesController < ApplicationController
  def index
   @candidates = Candidate.all.order(created_at: :desc)
   render json: @candidates
   #respond_with @candidates
  end

  def show
    @candidate = Candidate.find_by(params[:id])    
    render json: @candidate
  end

end
