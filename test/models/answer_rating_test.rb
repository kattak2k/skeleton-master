# == Schema Information
#
# Table name: answer_ratings
#
#  id             :integer          not null, primary key
#  interviewer_id :integer
#  answer_id      :integer
#  rating         :integer          default("0")
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class AnswerRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
