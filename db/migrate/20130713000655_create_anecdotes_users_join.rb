class CreateAnecdotesUsersJoin < ActiveRecord::Migration
  def change

create_table :anecdotes_users, :id => false do |t|
  t.references :anecdote, :null => false
  t.references :user, :null => false
end
add_index(:anecdotes_users, [:anecdote_id, :user_id], :unique => true)

end
end
