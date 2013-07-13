class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.date :recorded_on
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
