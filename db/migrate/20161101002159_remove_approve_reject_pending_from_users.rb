class RemoveApproveRejectPendingFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :approved, :boolean
    remove_column :users, :rejected, :boolean
    remove_column :users, :pending, :boolean
  end
end
