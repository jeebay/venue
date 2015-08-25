json.array!(@concert_halls) do |concert_hall|
  json.extract! concert_hall, :id, :name, :city, :state, :family_friendly
  json.url concert_hall_url(concert_hall, format: :json)
end
