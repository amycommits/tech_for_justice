class CreateUserDocuments < ActiveRecord::Migration
  def change
    create_table :user_documents do |t|
      t.references :user, index: true, foreign_key: true
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
