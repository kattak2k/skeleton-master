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

class Answer < ApplicationRecord
  belongs_to :candidate
  belongs_to :question
  belongs_to :interview
  has_many :answer_ratings
end
