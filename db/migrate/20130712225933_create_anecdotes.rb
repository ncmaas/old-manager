class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.string :title
      t.text :description
      t.integer :uploaded_by

      t.timestamps
    end
  end
end
