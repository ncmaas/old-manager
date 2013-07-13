json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :title, :description, :uploaded_by
  json.url anecdote_url(anecdote, format: :json)
end
