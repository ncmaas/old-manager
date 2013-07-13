class CreateJoinTableSobClassUser < ActiveRecord::Migration
  def change
    create_join_table :sob_classes, :users do |t|
      # t.index [:sob_class_id, :user_id]
      # t.index [:user_id, :sob_class_id]
    end
  end
end
