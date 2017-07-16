class UserAddress < ActiveRecord::Migration
  def change
    add_column :users, :address, :string, default: "Enter Your Address"
  end
end
