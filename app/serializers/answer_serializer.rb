class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :response

   has_many :answer_ratings
   belongs_to :candidate

   def answer_ratings
     object.answer_ratings.no_zero.avg
   end
end
