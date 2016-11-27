class RemoveStatusFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :status, :string
    add_column :forms, :status, :string
    add_column :forms, :first_name, :string
    add_column :forms, :last_name, :string
  end
end
