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

class Interview < ApplicationRecord

  belongs_to :position
  belongs_to :candidate
  has_many :interview_questions
  has_many :interview_participants
  has_many :questions, through: :interview_questions
  has_many :interviewers, through: :interview_participants

# sorting as per interview_date
  default_scope { order(interview_date: :asc) }

# Fetch next two interviews including today
  scope :next_interviews, -> { where('interview_date >= ?', DateTime.now) }

end
