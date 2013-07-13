json.array!(@sob_classes) do |sob_class|
  json.extract! sob_class, :title, :description
  json.url sob_class_url(sob_class, format: :json)
end
