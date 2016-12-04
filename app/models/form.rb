# == Schema Information
#
# Table name: forms
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  form_json  :string
#  form_type  :integer
#  status     :string
#  first_name :string
#  last_name  :string
#  created_at :datetime
#  updated_at :datetime
#

class Form < ActiveRecord::Base
  belongs_to :user

  def getFormHash
  	return form_json && JSON.parse(form_json)
  end
end
