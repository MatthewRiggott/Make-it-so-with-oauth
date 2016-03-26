class AddBraceletColumnToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :bracelet_id, :string
  end
end
