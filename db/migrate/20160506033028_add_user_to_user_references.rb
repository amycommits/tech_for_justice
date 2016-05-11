class AddUserToUserReferences < ActiveRecord::Migration
  def change
    add_reference :user_references, :user, index: true, foreign_key: true
  end
end
