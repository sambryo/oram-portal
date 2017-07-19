class CreateClientsListForCaseworkers < ActiveRecord::Migration
    def change
        add_column :users, :caseworker, :integer
        add_foreign_key :admins, :users
    end
    
end