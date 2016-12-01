class AddCaseDocumentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :case_document, :string
  end
end
