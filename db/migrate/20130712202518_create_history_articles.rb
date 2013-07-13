class CreateHistoryArticles < ActiveRecord::Migration
  def change
    create_table :history_articles do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
