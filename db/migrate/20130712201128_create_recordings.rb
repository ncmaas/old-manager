class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.string :description
      t.integer :uploaded_by
      t.string :title
      t.integer :public
      t.date :recorded_on
      t.integer :album_id

      t.timestamps
    end
  end
end
