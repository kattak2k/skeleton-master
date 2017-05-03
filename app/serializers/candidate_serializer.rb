class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone
  
  has_many :answers, embed: :response
  
end

