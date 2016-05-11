class AddUserToUserArguments < ActiveRecord::Migration
  def change
    add_reference :user_arguments, :user, index: true, foreign_key: true
  end
end
