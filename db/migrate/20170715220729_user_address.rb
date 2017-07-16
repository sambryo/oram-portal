class UserAddress < ActiveRecord::Migration
  def change
    add_column :users, :address, :string, default: ""
  end
end
