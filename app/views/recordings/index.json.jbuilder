json.array!(@recordings) do |recording|
  json.extract! recording, 
  json.url recording_url(recording, format: :json)
end
