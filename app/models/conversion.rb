class Conversion
  # bug fix for undefined method
  alias :read_attribute_for_serialization :send

  attr_accessor :date, :candidate, :questions, :interviewer_name, :next_interviews

  def initialize(attributes)
    # Setup attributes required for routes
    @date              = attributes[:date]
    @candidate         = attributes[:candidate]
    @questions         = attributes[:questions]
    @interviewer_name  = attributes[:name]
    @next_interviews   = attributes[:next_interviews]
  end

  def self.for_interview(interviewer)

    # get the Interviewer details from Conversions controller
    @interviewer = interviewer

    # Get the list of interviews
    @interviews  = Interview.includes(:interview_participants)                   
                   .where("'interview_participants.interview_id' = ?", interviewer.id)
                   .where('interview_date >= ?', DateTime.now).limit(2)

    # Get the attributes from interview model
     @interviews.map do |interview|
       Conversion.new({
          date: interview.interview_date,
          candidate: interview.candidate,
          questions: interview.questions
       })
     end
    
    # Get additional attributes
      {
       interviewer_name: @interviewer.name,
       next_interviews: @interviews
      }
  end

end