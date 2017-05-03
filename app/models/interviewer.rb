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

class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interviews

end
