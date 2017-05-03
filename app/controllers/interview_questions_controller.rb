class InterviewQuestionsController < ApplicationController
  def index
    @Interview_questions = InterviewQuestion.all
    render json: @Interview_questions
  end
end
