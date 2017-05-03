# == Schema Information
#
# Table name: interviewers
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InterviewerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
