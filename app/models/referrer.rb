class Referrer < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_referrers

  belongs_to :resource,
             :polymorphic => true
             #took out the :optional thing below because it was causing problems, but not sure why
            #  :optional => true

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify
end
