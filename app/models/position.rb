# == Schema Information
#
# Table name: positions
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Position < ApplicationRecord
  has_many :interviews
  has_many :candidates, through: :interviews
end
