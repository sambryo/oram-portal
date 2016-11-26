# == Schema Information
#
# Table name: referrals
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  client_id  :integer
#

class Referral < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_id", :class_name => "User"
  belongs_to :client, :foreign_key => "client_id", :class_name => "User"

end
