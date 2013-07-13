class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :pref_first_name, :string
    add_column :users, :title, :string
    add_column :users, :suffix, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address_line2, :string
    add_column :users, :address_line1, :string
    add_column :users, :admin, :integer
    add_column :users, :phone, :string
    add_column :users, :whiff, :bool
    add_column :users, :alternate_email, :string
    add_column :users, :tap_year, :integer
  end
end
