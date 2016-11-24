class Referral < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id", :class_name => "User"
  belongs_to :client, :foreign_key => "client_id", :class_name => "User"

end
