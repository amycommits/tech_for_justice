class AddUserDocumentToUserReference < ActiveRecord::Migration
  def change
    add_reference :user_references, :user_document, index: true, foreign_key: true
  end
end
