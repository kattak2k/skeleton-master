class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :response

   belongs_to :candidate
   has_many :answer_ratings

   def answer_ratings
     object.answer_ratings.no_zero.avg
   end
end
