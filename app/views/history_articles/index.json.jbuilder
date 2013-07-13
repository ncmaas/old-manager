json.array!(@history_articles) do |history_article|
  json.extract! history_article, :title, :description
  json.url history_article_url(history_article, format: :json)
end
