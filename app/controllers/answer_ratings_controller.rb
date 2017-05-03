class AnswerRatingsController < ApplicationController
  def index
    @rating = AnswerRating.no_zero.avg
    render json: @rating
  end
end
