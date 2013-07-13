class CreateSobClasses < ActiveRecord::Migration
  def change
    create_table :sob_classes do |t|
      t.integer :title
      t.text :description

      t.timestamps
    end
  end
end
