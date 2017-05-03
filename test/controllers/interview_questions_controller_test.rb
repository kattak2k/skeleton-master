require 'test_helper'

class InterviewQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interview_questions_index_url
    assert_response :success
  end

end
