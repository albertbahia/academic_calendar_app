json.array!(@events) do |event|
  json.extract! event, :id, :date, :event_type, :time_to_generate, :notes, :owner
  json.url event_url(event, format: :json)
end
