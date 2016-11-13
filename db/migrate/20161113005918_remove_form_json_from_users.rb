class RemoveFormJsonFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :formJSON
  end
end
