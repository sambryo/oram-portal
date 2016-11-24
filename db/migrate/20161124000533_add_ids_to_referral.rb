class AddIdsToReferral < ActiveRecord::Migration
  def change
    add_reference :referrals, :user, index: true
    add_reference :referrals, :client, index: true
  end
end
