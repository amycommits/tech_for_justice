class CreateUserReferences < ActiveRecord::Migration
  def change
    create_table :user_references do |t|
      t.references :document, index: true, foreign_key: true
      t.text :attachment

      t.timestamps null: false
    end
  end
end
