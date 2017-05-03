# == Schema Information
#
# Table name: interviews
#
#  id             :integer          not null, primary key
#  interview_date :datetime
#  description    :string
#  candidate_id   :integer
#  position_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class InterviewTest < ActiveSupport::TestCase

  def setup
    create_answers_and_ratings
  end

  test "interviews have multiple questions" do
    i = interviews(:first_driver_interview)
    assert i.interview_questions.any?
  end
  
  test "interview questions should have answers" do
    i = interviews(:first_driver_interview)
    assert i.questions.first.answers.any?
  end

  test "interview questions should be in order" do
    i = interviews(:first_driver_interview)
    assert_equal i.interview_questions.first.display_order, 1
  end

end
