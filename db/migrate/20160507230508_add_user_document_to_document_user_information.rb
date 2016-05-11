class AddUserDocumentToDocumentUserInformation < ActiveRecord::Migration
  def change
    add_reference :document_user_informations, :user_document, index: true, foreign_key: true
    add_reference :document_user_informations, :user_information, index: true, foreign_key: true
  end
end
