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

class AnswerRating < ApplicationRecord
  belongs_to :answer
  belongs_to :interviewer

# get non zero values
  scope :no_zero, -> { where.not(rating: 0) }
 # get average of ratings 
  scope :avg, -> { average(:rating) }
end
