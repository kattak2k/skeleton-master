# == Schema Information
#
# Table name: interview_participants
#
#  id             :integer          not null, primary key
#  interview_id   :integer
#  interviewer_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class InterviewParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
