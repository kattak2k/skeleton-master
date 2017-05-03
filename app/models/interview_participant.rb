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

class InterviewParticipant < ApplicationRecord
  belongs_to :interview
  belongs_to :interviewer
end
