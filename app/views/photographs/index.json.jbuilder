json.array!(@photographs) do |photograph|
  json.extract! photograph, 
  json.url photograph_url(photograph, format: :json)
end
