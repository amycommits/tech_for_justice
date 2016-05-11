class CreateDocumentUserCaseInfos < ActiveRecord::Migration
  def change
    create_table :document_user_case_infos do |t|
      t.references :user_document, index: true, foreign_key: true
      t.references :user_case_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
