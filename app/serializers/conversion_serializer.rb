class ConversionSerializer < ActiveModel::Serializer
  attributes :date, :candidate, :questions, :interviewer_name, :next_interviews
end
