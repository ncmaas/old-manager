class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
      t.string :title
      t.integer :uploaded_by
      t.string :description
      t.integer :public

      t.timestamps
    end
  end
end
