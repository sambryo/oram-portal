class UserPhone < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string, default: "Enter Your Phone Number"
    add_column :users, :skype, :string, default: "Enter Your Skype ID"
  end
end
