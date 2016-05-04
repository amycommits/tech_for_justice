class CreateUserArguments < ActiveRecord::Migration
  def change
    create_table :user_arguments do |t|
      t.references :document, index: true, foreign_key: true
      t.string :overall_reason
      t.string :user_change_details

      t.timestamps null: false
    end
  end
end
