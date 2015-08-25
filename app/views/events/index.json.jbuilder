json.array!(@events) do |event|
  json.extract! event, :id, :date, :alcohol_served
  json.url event_url(event, format: :json)
end
