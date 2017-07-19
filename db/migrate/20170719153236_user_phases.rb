class UserPhases < ActiveRecord::Migration
  def change
    add_column :users, :phase, :string, default: ""
  end
end
