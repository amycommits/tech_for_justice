class AddUserDocumentToUserArguments < ActiveRecord::Migration
  def change
    add_reference :user_arguments, :user_document, index: true, foreign_key: true
  end
end
