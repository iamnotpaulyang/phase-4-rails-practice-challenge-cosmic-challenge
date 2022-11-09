class ScientistWithPlanetsSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_of_study, :avatar

  #how to include associated objects? to help return their associated planets
  has_many :planets
  
end

#custom serializer