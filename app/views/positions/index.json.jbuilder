json.array!(@positions) do |position|
  json.extract! position, :name, :introduced, :description, :created_by
  json.url position_url(position, format: :json)
end
