class RolifyCreateReferrers < ActiveRecord::Migration
  def change
    create_table(:referrers) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_referrers, :id => false) do |t|
      t.references :user
      t.references :referrer
    end

    add_index(:referrers, :name)
    add_index(:referrers, [ :name, :resource_type, :resource_id ])
    add_index(:users_referrers, [ :user_id, :referrer_id ])
  end
end
