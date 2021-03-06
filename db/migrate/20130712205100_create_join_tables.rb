class CreateJoinTables < ActiveRecord::Migration
	def change

create_table :albums_sob_classes, :id => false do |t|
  t.references :album, :null => false
  t.references :sob_class, :null => false
end
add_index(:albums_sob_classes, [:album_id, :sob_class_id], :unique => true)


create_table :albums_arrangements, :id => false do |t|
  t.references :album, :null => false
  t.references :arrangement, :null => false
end
add_index(:albums_arrangements, [:album_id, :arrangement_id], :unique => true)


create_table :positions_users, :id => false do |t|
  t.references :position, :null => false
  t.references :user, :null => false
end
add_index(:positions_users, [:position_id, :user_id], :unique => true)

create_table :stories_users, :id => false do |t|
  t.references :story, :null => false
  t.references :user, :null => false
end
add_index(:stories_users, [:story_id, :user_id], :unique => true)

create_table :history_articles_users, :id => false do |t|
  t.references :history_article, :null => false
  t.references :user, :null => false
end
add_index(:history_articles_users, [:history_article_id, :user_id], :unique => true)


create_table :arrangements_users, :id => false do |t|
  t.references :arrangement, :null => false
  t.references :user, :null => false
end
add_index(:arrangements_users, [:arrangement_id, :user_id], :unique => true)


create_table :recordings_users, :id => false do |t|
  t.references :recording, :null => false
  t.references :user, :null => false
end
add_index(:recordings_users, [:recording_id, :user_id], :unique => true)


create_table :photographs_users, :id => false do |t|
  t.references :photograph, :null => false
  t.references :user, :null => false
end
add_index(:photographs_users, [:photograph_id, :user_id], :unique => true)

create_table :albums_users, :id => false do |t|
  t.references :album, :null => false
  t.references :user, :null => false
end
add_index(:albums_users, [:album_id, :user_id], :unique => true)

end
end


