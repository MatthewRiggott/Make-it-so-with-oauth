class AddTokenAndFBidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :facebook_id, :string
  end
end
