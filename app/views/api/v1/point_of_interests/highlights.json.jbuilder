json.array! @poi do |poi|
  json.extract! poi, :name, :latitude, :longitude
end
