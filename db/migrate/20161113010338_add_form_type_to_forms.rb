class AddFormTypeToForms < ActiveRecord::Migration
  def change
    add_column :forms, :form_type, :integer
  end
end
