class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :description
      t.integer :uploaded_by
      t.string :title
      t.integer :public
      t.integer :history_article_id

      t.timestamps
    end
  end
end
