class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.integer :yaleyear
      t.string :college
      t.integer :sobclass
      t.string :voicepart
      t.string :major

      t.timestamps
    end
  end
end
