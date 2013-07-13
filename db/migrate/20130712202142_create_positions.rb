class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :introduced
      t.string :description
      t.integer :created_by

      t.timestamps
    end
  end
end
