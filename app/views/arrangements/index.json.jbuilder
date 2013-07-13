json.array!(@arrangements) do |arrangement|
  json.extract! arrangement, :title, :uploaded_by, :description, :public
  json.url arrangement_url(arrangement, format: :json)
end
