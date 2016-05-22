class AddUserDocumentToUserCaseInfos < ActiveRecord::Migration
  def change
    add_reference :user_case_infos, :user_document, index: true, foreign_key: true
  end
end
