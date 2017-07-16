class UserPhone < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string, default: ""
    add_column :users, :skype, :string, default: ""
  end
end
