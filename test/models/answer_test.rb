# == Schema Information
#
# Table name: answers
#
#  id           :integer          not null, primary key
#  interview_id :integer
#  candidate_id :integer
#  question_id  :integer
#  response     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
