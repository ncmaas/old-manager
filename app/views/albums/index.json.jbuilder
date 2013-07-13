json.array!(@albums) do |album|
  json.extract! album, :recorded_on, :title, :description
  json.url album_url(album, format: :json)
end
