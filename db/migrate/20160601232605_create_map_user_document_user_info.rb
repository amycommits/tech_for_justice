class CreateMapUserDocumentUserInfo < ActiveRecord::Migration
  def change
    create_table :map_user_document_user_infos do |t|
      t.references :user_document, index: true, foreign_key: true
      t.references :user_information, index: true, foreign_key: true
    end
  end
end
