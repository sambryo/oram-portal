# == Schema Information
#
# Table name: forms
#
#  id        :integer          not null, primary key
#  user_id   :integer
#  form_json :string
#  form_type :integer
#

class Form < ActiveRecord::Base
  belongs_to :user
end
