class AddFormJsonToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :formJSON, :string, :default => ""
  end
end
