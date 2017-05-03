# == Schema Information
#
# Table name: interview_questions
#
#  id            :integer          not null, primary key
#  interview_id  :integer
#  question_id   :integer
#  display_order :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class InterviewQuestion < ApplicationRecord
  belongs_to :interview
  belongs_to :question

# setting up default sort order for Interview questions need to be ordered correctly 
  default_scope { order(display_order: :asc) }
end
