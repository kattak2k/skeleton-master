class InterviewQuestion < ApplicationRecord
  belongs_to :interview
  belongs_to :question

# setting up default sort order for Interview questions need to be ordered correctly 
  default_scope { order(display_order: :asc) }
end
