class ConversionsController < ApplicationController

# Route
#/interviewers/:interviewer_id/conversions(.:format) => conversions#index
  def index
   # Get the interviewer id
   @Interviewer = Interviewer.find_by(parameters[:interviewer_id])
   # Pass the parameters to app/models/Conversion
   @conversions = Conversion.for_interview(@interviewer)
   render json: @conversions
  end
end
