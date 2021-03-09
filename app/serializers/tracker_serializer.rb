class TrackerSerializer < ActiveModel::Serializer
  attributes :id, :day, :date, :totalcal

  has_many :foods 
end



