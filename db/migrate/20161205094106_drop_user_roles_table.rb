class DropUserRolesTable < ActiveRecord::Migration
  def change
    drop_table :user_roles
    drop_table :users_user_roles
  end
end
