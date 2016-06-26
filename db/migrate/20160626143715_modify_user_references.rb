class ModifyUserReferences < ActiveRecord::Migration
  def change
    change_table :user_references do |t|
      t.remove :document_id
      t.string :reference_name
      t.string :relation_to_user
      t.string :recommendation
    end
  end
end
