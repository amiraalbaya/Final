class FixPassword < ActiveRecord::Migration
  def change
  	remove_column :users, :password, :string
  	add_column :users, :password, :digest
  end
end
