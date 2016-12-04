class AddEncryptedFieldsToForm < ActiveRecord::Migration
  def change
    add_column :forms, :encrypted_form_json, :string
    add_column :forms, :encrypted_form_json_iv, :string
    remove_column :forms, :form_json
  end
end
